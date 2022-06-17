import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'client.g.dart';

@JsonSerializable()
class Client extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? gender;
  final String? status;

  const Client({this.id, this.name, this.email, this.gender, this.status});

  @override
  List<Object?> get props => [id, name, email, gender, status];

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

  Map<String, dynamic> toJson() => _$ClientToJson(this);
}
