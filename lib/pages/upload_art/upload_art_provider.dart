import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:art_portfolio_flutter/common/globals.dart';
import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

final uploadArtProvider = ChangeNotifierProvider.autoDispose((_) {
  return UploadArtProvider();
});

class UploadArtProvider extends ChangeNotifier {
  String? _artTitle;
  Uint8List? imageBytes;
  XFile? imageFile;
  final _picker = ImagePicker();
  final _artRepository = Repositories.instance.artRepository;
  final _artistRepository = Repositories.instance.artistRepository;
  User? myUser;
  Artist? myArtist;

  UploadArtProvider() {
    _getMyUser();
    _getMyArtist();
  }

  void setTitle(String value) {
    _artTitle = value;
  }

  Future<void> _getMyUser() async {
    myUser = await Globals.getMyUser();
    notifyListeners();
  }

  Future<void> _getMyArtist() async {
    myArtist = await _artistRepository.getMyArtist();
    notifyListeners();
  }

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile = pickedFile;

      try {
        imageBytes = await pickedFile.readAsBytes();
      } catch (e) {
        log('Error reading file: $e');
      }
      notifyListeners();
    }
  }

  void clearImage() {
    imageBytes = null;
    imageFile = null;
    notifyListeners();
  }

  Future<String?> uploadArt() async {
    if (myArtist == null) {
      // This should never happen.
      // The user should not be able to get past the error screen without an artist
      return 'Error: Artist was null. Must have a registered artist to upload art';
    }

    /// Upload the file to firebase storage
    final task = await _uploadFile(imageFile!);

    final finalState = await task;

    if (finalState == null || finalState.state != TaskState.success) {
      return 'Error uploading file. Please try again';
    }

    final downloadUrl = await finalState.ref.getDownloadURL();
    final firebaseStoragePath = finalState.ref.fullPath;

    /// Create an entry for this piece of art in our art collection
    _artRepository.addItem(
      Art(
        name: _artTitle ?? task?.snapshot.ref.name ?? '',
        description: 'test description for testing an upload',
        downloadUrl: downloadUrl,
        firebaseStoragePath: firebaseStoragePath,
        artist: myArtist!,
      ),
    );
  }

  /// Upload the file to firebase storage
  Future<UploadTask?> _uploadFile(XFile file) async {
    final myUserId = myUser?.uid;
    if (myUserId == null) {
      log('Error: Could not upload art. MyUser id was null.');

      return null;
    }

    UploadTask uploadTask;

    final uuid = Uuid().v1();
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('uploads')
        .child(myUserId)
        .child(uuid);

    final metadata = SettableMetadata(
      contentType: 'image/jpeg',
      customMetadata: {'picked-file-path': file.path},
    );

    if (kIsWeb) {
      uploadTask = ref.putData(await file.readAsBytes(), metadata);
    } else {
      uploadTask = ref.putFile(File(file.path), metadata);
    }

    return Future.value(uploadTask);
  }
}
