import 'package:flutter_app/generated/json/base/json_convert_content.dart';

class ResponseEntity<T> with JsonConvert<ResponseEntity> {
  late int code;
  late String message;
  T? result;
  late bool success;
  late int timestamp;
}
