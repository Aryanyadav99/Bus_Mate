// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorDetails _$$_ErrorDetailsFromJson(Map<String, dynamic> json) =>
    _$_ErrorDetails(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String,
      devErrorMessage: json['devErrorMessage'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_ErrorDetailsToJson(_$_ErrorDetails instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'devErrorMessage': instance.devErrorMessage,
      'timestamp': instance.timestamp,
    };
