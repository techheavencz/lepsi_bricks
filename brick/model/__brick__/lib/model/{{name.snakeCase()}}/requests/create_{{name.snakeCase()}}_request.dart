import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/http/request/api_request_create.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

part 'create_{{#snakeCase}}{{name}}{{/snakeCase}}_request.g.dart';

@JsonSerializable(explicitToJson: true)
class Create{{#pascalCase}}{{name}}{{/pascalCase}}Request extends ApiRequestCreate<{{#pascalCase}}{{name}}{{/pascalCase}}> {

  Create{{#pascalCase}}{{name}}{{/pascalCase}}Request(List<{{#pascalCase}}{{name}}{{/pascalCase}}> entities):
        super(entities: entities);

  factory Create{{#pascalCase}}{{name}}{{/pascalCase}}Request.fromJson(Map<String, dynamic> json) => _$Create{{#pascalCase}}{{name}}{{/pascalCase}}RequestFromJson(json);
  Map<String, dynamic> toJson() => _$Create{{#pascalCase}}{{name}}{{/pascalCase}}RequestToJson(this);
}
