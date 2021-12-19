import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

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

  Future<UploadTask?> uploadFile(XFile file) async {
    UploadTask uploadTask;

    final uuid = Uuid().v1();
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('uploads')
        .child('${file.path}_$uuid');

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
