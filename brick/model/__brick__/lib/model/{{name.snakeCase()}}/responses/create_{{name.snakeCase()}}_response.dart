import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/http/response/api_response_create.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

part 'create_{{#snakeCase}}{{name}}{{/snakeCase}}_response.g.dart';

@JsonSerializable()
class Create{{#pascalCase}}{{name}}{{/pascalCase}}Response extends ApiResponseCreate<{{#pascalCase}}{{name}}{{/pascalCase}}> {

  Create{{#pascalCase}}{{name}}{{/pascalCase}}Response({ required super.entities });

  factory Create{{#pascalCase}}{{name}}{{/pascalCase}}Response.fromJson(Map<String, dynamic> json) => _$Create{{#pascalCase}}{{name}}{{/pascalCase}}ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Create{{#pascalCase}}{{name}}{{/pascalCase}}ResponseToJson(this);
}
