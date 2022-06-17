import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'meta.g.dart';

@JsonSerializable()
class Meta extends Equatable {
  final Pagination? pagination;

  const Meta({this.pagination});

  @override
  List<Object?> get props => [pagination];

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Pagination extends Equatable {
  final int? total;
  final int? pages;
  final int? page;
  final int? limit;
  final Links? links;

  const Pagination({this.total, this.pages, this.page, this.limit, this.links});

  @override
  List<Object?> get props => [total, pages, limit, links];

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class Links extends Equatable {
  final String? previous;
  final String? current;
  final String? next;

  const Links({this.previous, this.current, this.next});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);

  @override
  List<Object?> get props => [previous, current, next];
}
