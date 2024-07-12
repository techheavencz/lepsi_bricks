import 'package:json_annotation/json_annotation.dart';
import 'package:bson/bson.dart';
import 'package:lepsi_restaurace_models/database_entity.dart';
import 'package:lepsi_restaurace_models/util/misc.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}.g.dart';



@JsonSerializable(explicitToJson: true)
class {{#pascalCase}}{{name}}{{/pascalCase}} extends DatabaseEntity {

  {{#pascalCase}}{{name}}{{/pascalCase}}({
    required super.id,
    required super.createdAt,
    required super.createdBy,
    required super.updatedAt,
    required super.updatedBy,
    super.deletedAt,
    super.deletedBy,
  });

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) => _${{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{name}}{{/pascalCase}}ToJson(this);
}
