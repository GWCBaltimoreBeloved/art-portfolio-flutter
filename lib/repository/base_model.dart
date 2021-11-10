abstract class BaseModel<T> {
  late String id;
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
