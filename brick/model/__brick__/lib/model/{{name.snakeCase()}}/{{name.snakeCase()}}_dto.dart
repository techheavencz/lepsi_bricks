import 'package:json_annotation/json_annotation.dart';
import 'package:lepsi_restaurace_models/transport_entity.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_dto.g.dart';



@JsonSerializable(explicitToJson: true)
class {{#pascalCase}}{{name}}{{/pascalCase}}Dto extends TransportEntity {

  {{#pascalCase}}{{name}}{{/pascalCase}}Dto();

  factory {{#pascalCase}}{{name}}{{/pascalCase}}Dto.fromJson(Map<String, dynamic> json) => _${{#pascalCase}}{{name}}{{/pascalCase}}DtoFromJson(json);
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{name}}{{/pascalCase}}DtoToJson(this);
}
