import 'package:flutter_app/common/entities/response_entity.dart';

responseEntityFromJson(ResponseEntity data, Map<String, dynamic> json) {
  if (json['code'] != null) {
    data.code = json['code'] is String ? int.tryParse(json['code']) : json['code'].toInt();
  }
  if (json['message'] != null) {
    data.message = json['message'].toString();
  }
  if (json['result'] != null) {
    data.result = json['result'].toString();
  }
  if (json['success'] != null) {
    data.success = json['success'];
  }
  if (json['timestamp'] != null) {
    data.timestamp = json['timestamp'] is String ? int.tryParse(json['timestamp']) : json['timestamp'].toInt();
  }
  return data;
}

Map<String, dynamic> responseEntityToJson(ResponseEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['result'] = entity.result;
  data['success'] = entity.success;
  data['timestamp'] = entity.timestamp;
  return data;
}
