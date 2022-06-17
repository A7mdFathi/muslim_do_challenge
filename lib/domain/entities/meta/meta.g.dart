// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'pagination': instance.pagination,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      total: json['total'] as int?,
      pages: json['pages'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
      'limit': instance.limit,
      'links': instance.links,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      previous: json['previous'] as String?,
      current: json['current'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
    };
