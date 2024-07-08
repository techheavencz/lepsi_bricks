import 'package:dart_frog/dart_frog.dart';
import 'package:lepsi_restaurace_api/controller/{{#snakeCase}}{{name}}{{/snakeCase}}_controller.dart';
import 'package:lepsi_restaurace_api/misc/route.dart';
import 'package:lepsi_restaurace_api/response/invalid_http_method_response.dart';

Future<Response> onRequest(RequestContext context) async {
  final controller = {{#pascalCase}}{{name}}{{/pascalCase}}Controller(
    requestContext: context,
    route: Route(
      checkDevice: true,
      checkAuth: false,
    ),
  );
  
  await controller.init();

  if(!controller.initialized)return controller.errorResponse;

  return switch (controller.request.method) {
    HttpMethod.post => controller.create(),
    _ => Future.value(InvalidHttpMethodResponse()),
  };
}
