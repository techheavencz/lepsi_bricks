import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/http/response/api_response.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

part 'get_{{#snakeCase}}{{name}}{{/snakeCase}}_response.g.dart';

@JsonSerializable()
class Get{{#pascalCase}}{{name}}{{/pascalCase}}Response extends ApiResponse {

  {{#pascalCase}}{{name}}{{/pascalCase}} entity;

  Get{{#pascalCase}}{{name}}{{/pascalCase}}Response({ required this.entity });

  factory Get{{#pascalCase}}{{name}}{{/pascalCase}}Response.fromJson(Map<String, dynamic> json) => _$Get{{#pascalCase}}{{name}}{{/pascalCase}}ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Get{{#pascalCase}}{{name}}{{/pascalCase}}ResponseToJson(this);
}
