import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/http/request/api_request_update.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';


part 'update_{{#snakeCase}}{{name}}{{/snakeCase}}_request.g.dart';

@JsonSerializable(explicitToJson: true)
class Update{{#pascalCase}}{{name}}{{/pascalCase}}Request extends ApiRequestUpdate<{{#pascalCase}}{{name}}{{/pascalCase}}> {

  Update{{#pascalCase}}{{name}}{{/pascalCase}}Request({{#pascalCase}}{{name}}{{/pascalCase}} entity):
        super(entity: entity);

  factory Update{{#pascalCase}}{{name}}{{/pascalCase}}Request.fromJson(Map<String, dynamic> json) => _$Update{{#pascalCase}}{{name}}{{/pascalCase}}RequestFromJson(json);
  Map<String, dynamic> toJson() => _$Update{{#pascalCase}}{{name}}{{/pascalCase}}RequestToJson(this);
}
