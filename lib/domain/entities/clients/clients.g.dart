// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clients _$ClientsFromJson(Map<String, dynamic> json) => Clients(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Client.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClientsToJson(Clients instance) => <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
