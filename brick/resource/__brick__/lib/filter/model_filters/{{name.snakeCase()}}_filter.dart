import 'package:lepsi_restaurace_api/filter/model_filters/model_filter.dart';

/// {{#pascalCase}}{{name}}{{/pascalCase}}Filter contains filter mapping for Branch model
class {{#pascalCase}}{{name}}{{/pascalCase}}Filter extends ModelFilter{

  /// Construct
{{#pascalCase}}{{name}}{{/pascalCase}}Filter( { super.queryParams } );

  @override
  final Map<String, FilterType> modelMappings = {
    'name': FilterType.string,
  };
}