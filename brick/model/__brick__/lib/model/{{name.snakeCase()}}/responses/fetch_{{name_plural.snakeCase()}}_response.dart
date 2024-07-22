import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/http/response/api_response.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

part 'fetch_{{#snakeCase}}{{name_plural}}{{/snakeCase}}_response.g.dart';

@JsonSerializable()
class Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}Response extends ApiResponse {

  List<{{#pascalCase}}{{name}}{{/pascalCase}}> entities;

  Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}Response({required this.entities});

  factory Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}Response.fromJson(Map<String, dynamic> json) => _$Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}ResponseToJson(this);
}
