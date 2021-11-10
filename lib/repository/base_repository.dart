class BaseRepository {
  // static T _getModel<T extends BaseModel>(Map<String, dynamic> map, T) {
  //   //TODO will probably need to pass an ID in here
  //   return T()..fromJson();
  // }

  // static CollectionReference<T> getReference<T extends BaseModel>(
  //   String collectionName,
  // ) {
  //   return FirebaseFirestore.instance
  //       .collection(collectionName)
  //       .withConverter<T>(
  //         fromFirestore: (snapshot, _) => _getModel(snapshot.data()!, T),
  //         toFirestore: (item, _) => item.toJson(),
  //       );
  // }
}
