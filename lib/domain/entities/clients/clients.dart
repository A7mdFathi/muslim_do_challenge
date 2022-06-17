import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../client/client.dart';
import '../meta/meta.dart';
part 'clients.g.dart';

@JsonSerializable()
class Clients extends Equatable {
  @JsonKey(name: 'meta')
  final Meta? meta;

  @JsonKey(name: 'data')
  final List<Client>? data;

  const Clients({this.meta, this.data});

  @override
  List<Object?> get props => [meta, data];

  factory Clients.fromJson(Map<String, dynamic> json) =>
      _$ClientsFromJson(json);

  Map<String, dynamic> toJson() => _$ClientsToJson(this);
}
