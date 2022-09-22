// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<List<ElixirDto>>> _elixirsGet({
    String? name,
    String? difficulty,
    String? ingredient,
    String? inventorFullName,
    String? manufacturer,
  }) {
    final $url = '/Elixirs';
    final $params = <String, dynamic>{
      'Name': name,
      'Difficulty': difficulty,
      'Ingredient': ingredient,
      'InventorFullName': inventorFullName,
      'Manufacturer': manufacturer,
    };
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ElixirDto>, ElixirDto>($request);
  }

  @override
  Future<Response<ElixirDto>> _elixirsIdGet({required String? id}) {
    final $url = '/Elixirs/${id}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ElixirDto, ElixirDto>($request);
  }

  @override
  Future<Response<Unit>> _feedbackPost({required SendFeedbackCommand? body}) {
    final $url = '/Feedback';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Unit, Unit>($request);
  }

  @override
  Future<Response<List<HouseDto>>> _housesGet({GetHousesQuery? query}) {
    final $url = '/Houses';
    final $params = <String, dynamic>{'query': query};
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<HouseDto>, HouseDto>($request);
  }

  @override
  Future<Response<HouseDto>> _housesIdGet({required String? id}) {
    final $url = '/Houses/${id}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HouseDto, HouseDto>($request);
  }

  @override
  Future<Response<List<IngredientDto>>> _ingredientsGet({String? name}) {
    final $url = '/Ingredients';
    final $params = <String, dynamic>{'Name': name};
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<IngredientDto>, IngredientDto>($request);
  }

  @override
  Future<Response<IngredientDto>> _ingredientsIdGet({required String? id}) {
    final $url = '/Ingredients/${id}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<IngredientDto, IngredientDto>($request);
  }

  @override
  Future<Response<List<SpellDto>>> _spellsGet({
    String? name,
    String? type,
    String? incantation,
  }) {
    final $url = '/Spells';
    final $params = <String, dynamic>{
      'Name': name,
      'Type': type,
      'Incantation': incantation,
    };
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<SpellDto>, SpellDto>($request);
  }

  @override
  Future<Response<SpellDto>> _spellsIdGet({required String? id}) {
    final $url = '/Spells/${id}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SpellDto, SpellDto>($request);
  }

  @override
  Future<Response<List<WizardDto>>> _wizardsGet({
    String? firstName,
    String? lastName,
  }) {
    final $url = '/Wizards';
    final $params = <String, dynamic>{
      'FirstName': firstName,
      'LastName': lastName,
    };
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<WizardDto>, WizardDto>($request);
  }

  @override
  Future<Response<WizardDto>> _wizardsIdGet({required String? id}) {
    final $url = '/Wizards/${id}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<WizardDto, WizardDto>($request);
  }
}
