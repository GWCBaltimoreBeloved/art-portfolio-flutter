import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

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
  void setName(String value) {}
  Uint8List? imageBytes;
  XFile? imageFile;
  final _picker = ImagePicker();
  User? myUser;

  UploadArtProvider() {
    _getMyUser();
  }

  Future<void> _getMyUser() async {
    myUser = FirebaseAuth.instance.currentUser ??
        await FirebaseAuth.instance.authStateChanges().first;
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
    final task = await _uploadFile(imageFile!);

    //TODO save the url, name, an description of the upload to the art listing
  }

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
