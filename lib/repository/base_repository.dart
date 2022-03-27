import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class BaseRepository<T> {
  late final CollectionReference<T> collectionReference;
  late final T Function(DocumentSnapshot<Map<String, dynamic>> document)
      fromDocument;
  late final Map<String, dynamic> Function(T model) toJson;
  final String collectionName;
  String get _path => '/$collectionName';

  BaseRepository({
    required this.collectionName,
    required T Function(Map<String, dynamic> json) fromJson,
    required Map<String, dynamic> Function(T model) toJson,
  }) {
    fromDocument =
        (document) => fromJson(document.data()!..['documentId'] = document.id);
    this.toJson = (item) => toJson(item)..remove('documentId');

    collectionReference = FirebaseFirestore.instance
        .collection(
          collectionName,
        )
        .withConverter<T>(
          fromFirestore: (document, _) => fromDocument(document),
          toFirestore: (item, _) => this.toJson(item),
        );
  }

  Future<T?> addItem(T item) async {
    try {
      final response = await collectionReference.add(item);
      final data = response.get().then((value) => value.data());
      log('$_path Added successfully: ${item.toString()}');
      return data;
    } catch (e) {
      log('$_path Error - Failed to add with error: $e');
    }
  }

  Future<bool> updateItem({required T item, required String documentId}) async {
    try {
      collectionReference.doc(documentId).update(toJson(item));
      log('$_path Updated successfully: ${item.toString()}');
      return true;
    } catch (e) {
      log('$_path Error - Failed to add ${item.runtimeType} with error: $e');
      return false;
    }
  }

  Future<T?> deleteItem({required String documentId}) async {
    try {
      await collectionReference.doc(documentId).delete();
      log('$_path Document $documentId deleted successfully');
    } catch (e) {
      log('$_path Error - Failed to delete item of documentId: $documentId with error: $e');
    }
  }

  Future<T?> getById({required String itemId}) async {
    try {
      final snapshot = await collectionReference.doc(itemId).get();
      return snapshot.data();
    } catch (e) {
      log('$_path Error getting item by id: $e');
    }
  }

  Future<List<T>?> getList() async {
    try {
      final snapshots = await collectionReference.get();
      return snapshots.docs.map((e) => e.data()).toList();
    } catch (e) {
      log('$_path Error getting list: $e');
    }
  }
}
