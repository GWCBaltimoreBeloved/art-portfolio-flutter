import 'package:json_annotation/json_annotation.dart';

abstract class BaseModel<T> {
  @JsonKey(ignore: true)
  late String id;
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
