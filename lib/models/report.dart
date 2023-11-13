import 'package:flutter/material.dart';

class Expertise {
  int? id;
  String? code;
  String? abstract;
  String? from;
  int? owner;
  int? version;
  String? codeFrom;
  DateTime? publishDate;
  int? status;
  DateTime? createdDate;
  DateTime? updatedDate;
  String? publishDateStr;

  Expertise({
    this.id,
    this.code,
    this.abstract,
    this.from,
    this.owner,
    this.version,
    this.codeFrom,
    this.publishDate,
    this.status,
    this.createdDate,
    this.updatedDate,
    this.publishDateStr,
  });

  factory Expertise.fromJson(Map<String, dynamic> json) =>
      _$ExpertiseFromJson(json);

  Map<String, dynamic> toJson() => _$ExpertiseToJson(this);
}

Expertise _$ExpertiseFromJson(Map<String, dynamic> json) {
  return Expertise(
    id: json['id'] as int?,
    code: json['code'] as String?,
    abstract: json['abstract'] as String?,
    from: json['from'] as String?,
    owner: json['owner'] as int?,
    version: json['version'] as int?,
    codeFrom: json['code_from'] as String?,
    publishDate: json['publish_date'] == null
        ? null
        : DateTime.parse(json['publish_date'] as String),
    status: json['status'] as int?,
    createdDate: json['created_date'] == null
        ? null
        : DateTime.parse(json['created_date'] as String),
    updatedDate: json['updated_date'] == null
        ? null
        : DateTime.parse(json['updated_date'] as String),
    publishDateStr: json['publishDateStr'] as String?,
  );
}

Map<String, dynamic> _$ExpertiseToJson(Expertise instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'abstract': instance.abstract,
      'from': instance.from,
      'owner': instance.owner,
      'version': instance.version,
      'code_from': instance.codeFrom,
      'publish_date': instance.publishDate?.toIso8601String(),
      'status': instance.status,
      'created_date': instance.createdDate?.toIso8601String(),
      'updated_date': instance.updatedDate?.toIso8601String(),
      'publishDateStr': instance.publishDateStr,
    };