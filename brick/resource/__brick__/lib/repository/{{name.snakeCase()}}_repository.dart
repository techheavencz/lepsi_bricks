import 'package:lepsi_restaurace_api/repository/crud_repository.dart';
import 'package:lepsi_restaurace_api/services/database_service.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

/// BusinessRepository
class {{#pascalCase}}{{name}}{{/pascalCase}}Repository extends CrudRepository<{{#pascalCase}}{{name}}{{/pascalCase}}>{

  /// Construct
  {{#pascalCase}}{{name}}{{/pascalCase}}Repository(DatabaseService databaseService):
        super(databaseService, '{{#snakeCase}}{{name_plural}}{{/snakeCase}}');

  @override
  {{#pascalCase}}{{name}}{{/pascalCase}} resourceFromJson(Map<String, dynamic> json) => {{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(json);
}