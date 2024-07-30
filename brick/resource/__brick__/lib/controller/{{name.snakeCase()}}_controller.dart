import 'package:lepsi_restaurace_api/controller/crud_controller.dart';
import 'package:lepsi_restaurace_api/filter/model_filters/{{#snakeCase}}{{name}}{{/snakeCase}}_filter.dart';
import 'package:lepsi_restaurace_api/repository/{{#snakeCase}}{{name}}{{/snakeCase}}_repository.dart';
import 'package:lepsi_restaurace_api/services/database_service.dart';
import 'package:lepsi_restaurace_models/http/request/api_request_create.dart';
import 'package:lepsi_restaurace_models/http/request/api_request_update.dart';
import 'package:lepsi_restaurace_models/http/response/api_response.dart';
import 'package:lepsi_restaurace_models/http/response/api_response_create.dart';
import 'package:lepsi_restaurace_models/http/response/api_response_delete.dart';
import 'package:lepsi_restaurace_models/http/response/api_response_update.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/requests/create_{{#snakeCase}}{{name}}{{/snakeCase}}_request.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/requests/update_{{#snakeCase}}{{name}}{{/snakeCase}}_request.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/responses/create_{{#snakeCase}}{{name}}{{/snakeCase}}_response.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/responses/fetch_{{#snakeCase}}{{name_plural}}{{/snakeCase}}_response.dart';
import 'package:lepsi_restaurace_models/model/{{#snakeCase}}{{name}}{{/snakeCase}}/responses/get_{{#snakeCase}}{{name}}{{/snakeCase}}_response.dart';

/// {{#pascalCase}}{{name}}{{/pascalCase}}Controller handles HTTP requests concerning product categories
class {{#pascalCase}}{{name}}{{/pascalCase}}Controller extends CrudController<
    {{#pascalCase}}{{name}}{{/pascalCase}}Repository,
    {{#pascalCase}}{{name}}{{/pascalCase}},
    {{#pascalCase}}{{name}}{{/pascalCase}}Dto,
>{

  /// Construct
  {{#pascalCase}}{{name}}{{/pascalCase}}Controller({
    required super.requestContext,
    required super.route,
  }):
  super(
    filter: {{#pascalCase}}{{name}}{{/pascalCase}}Filter(queryParams: requestContext.request.url.queryParametersAll),
    repository: {{#pascalCase}}{{name}}{{/pascalCase}}Repository(requestContext.read<DatabaseService>()),
  );

  // ------------- CREATE -------------
  @override
  ApiRequestCreate<{{#pascalCase}}{{name}}{{/pascalCase}}Dto> requestDataCreate(Map<String, dynamic> map) =>
      Create{{#pascalCase}}{{name}}{{/pascalCase}}Request.fromJson(map);
  @override
  ApiResponseCreate responseDataCreate(List<{{#pascalCase}}{{name}}{{/pascalCase}}> entities) =>
      Create{{#pascalCase}}{{name}}{{/pascalCase}}Response(entities: entities);

  // ------------- LIST -------------
  @override
  ApiResponse responseDataList(List<{{#pascalCase}}{{name}}{{/pascalCase}}> entities) =>
      Fetch{{#pascalCase}}{{name_plural}}{{/pascalCase}}Response(entities: entities);

  // ------------- GET -------------
  @override
  ApiResponse responseDataGet({{#pascalCase}}{{name}}{{/pascalCase}} entity) =>
      Get{{#pascalCase}}{{name}}{{/pascalCase}}Response(entity: entity);

  // ------------- UPDATE -------------
  @override
  ApiRequestUpdate<{{#pascalCase}}{{name}}{{/pascalCase}}Dto> requestDataUpdate(Map<String, dynamic> map) =>
      Update{{#pascalCase}}{{name}}{{/pascalCase}}Request.fromJson(map);
  @override
  ApiResponse responseDataUpdate({{#pascalCase}}{{name}}{{/pascalCase}} entity, {required bool isSuccess}) =>
      ApiResponseUpdate(success: isSuccess);

  // ------------- DELETE -------------
  @override
  ApiResponse responseDataDelete({required bool isSuccess}) =>
      ApiResponseDelete(success: isSuccess);

}
