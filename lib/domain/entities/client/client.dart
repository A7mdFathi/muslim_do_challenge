import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'client.g.dart';

@JsonSerializable()
class Client extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? gender;
  final String? status;
  final int? clientColor;

  const Client({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
    this.clientColor,
  });

  @override
  List<Object?> get props => [id, name, email, gender, status,clientColor];

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

  Map<String, dynamic> toJson() => _$ClientToJson(this);

  Client copyWith(
      {String? name,
      String? email,
      String? gender,
      String? status,
      int? clientColor}) {
    return Client(
      name: name ?? this.name,
      clientColor: clientColor ?? this.clientColor,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      status: status ?? this.status,
    );
  }
}
