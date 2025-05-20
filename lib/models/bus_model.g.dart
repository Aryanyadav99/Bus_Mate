// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bus _$$_BusFromJson(Map<String, dynamic> json) => _$_Bus(
      busId: json['busId'] as int?,
      busName: json['busName'] as String,
      busNumber: json['busNumber'] as String,
      busType: json['busType'] as String,
      totalSeat: json['totalSeat'] as int,
    );

Map<String, dynamic> _$$_BusToJson(_$_Bus instance) => <String, dynamic>{
      'busId': instance.busId,
      'busName': instance.busName,
      'busNumber': instance.busNumber,
      'busType': instance.busType,
      'totalSeat': instance.totalSeat,
    };
