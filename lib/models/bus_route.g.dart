// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusRoute _$$_BusRouteFromJson(Map<String, dynamic> json) => _$_BusRoute(
      routeId: json['routeId'] as int?,
      routeName: json['routeName'] as String,
      cityFrom: json['cityFrom'] as String,
      cityTo: json['cityTo'] as String,
      distanceInKm: (json['distanceInKm'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BusRouteToJson(_$_BusRoute instance) =>
    <String, dynamic>{
      'routeId': instance.routeId,
      'routeName': instance.routeName,
      'cityFrom': instance.cityFrom,
      'cityTo': instance.cityTo,
      'distanceInKm': instance.distanceInKm,
    };
