import 'package:art_portfolio_flutter/repository/base_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BaseRepository {
  static T _getModel<T extends BaseModel>(Map<String, dynamic> map, T) {
    //TODO will probably need to pass an ID in here
    return T()..fromJson();
  }

  static CollectionReference<T> getReference<T extends BaseModel>(
    String collectionName,
  ) {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .withConverter<T>(
          fromFirestore: (snapshot, _) => _getModel(snapshot.data()!, T),
          toFirestore: (item, _) => item.toJson(),
        );
  }
}
