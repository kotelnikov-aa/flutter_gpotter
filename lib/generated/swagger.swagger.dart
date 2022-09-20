// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    Authenticator? authenticator,
    String? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$Swagger(newClient);
  }

  ///
  ///@param Name
  ///@param Difficulty
  ///@param Ingredient
  ///@param InventorFullName
  ///@param Manufacturer
  Future<chopper.Response<List<ElixirDto>>> elixirsGet({
    String? name,
    enums.ElixirDifficulty? difficulty,
    String? ingredient,
    String? inventorFullName,
    String? manufacturer,
  }) {
    generatedMapping.putIfAbsent(ElixirDto, () => ElixirDto.fromJsonFactory);

    return _elixirsGet(
        name: name,
        difficulty: enums.$ElixirDifficultyMap[difficulty]?.toString(),
        ingredient: ingredient,
        inventorFullName: inventorFullName,
        manufacturer: manufacturer);
  }

  ///
  ///@param Name
  ///@param Difficulty
  ///@param Ingredient
  ///@param InventorFullName
  ///@param Manufacturer
  @Get(path: '/Elixirs')
  Future<chopper.Response<List<ElixirDto>>> _elixirsGet({
    @Query('Name') String? name,
    @Query('Difficulty') String? difficulty,
    @Query('Ingredient') String? ingredient,
    @Query('InventorFullName') String? inventorFullName,
    @Query('Manufacturer') String? manufacturer,
  });

  ///
  ///@param id
  Future<chopper.Response<ElixirDto>> elixirsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ElixirDto, () => ElixirDto.fromJsonFactory);

    return _elixirsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/Elixirs/{id}')
  Future<chopper.Response<ElixirDto>> _elixirsIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<Unit>> feedbackPost(
      {required SendFeedbackCommand? body}) {
    generatedMapping.putIfAbsent(Unit, () => Unit.fromJsonFactory);

    return _feedbackPost(body: body);
  }

  ///
  @Post(path: '/Feedback')
  Future<chopper.Response<Unit>> _feedbackPost(
      {@Body() required SendFeedbackCommand? body});

  ///
  ///@param query
  Future<chopper.Response<List<HouseDto>>> housesGet({GetHousesQuery? query}) {
    generatedMapping.putIfAbsent(
        GetHousesQuery, () => GetHousesQuery.fromJsonFactory);
    generatedMapping.putIfAbsent(HouseDto, () => HouseDto.fromJsonFactory);

    return _housesGet(query: query);
  }

  ///
  ///@param query
  @Get(path: '/Houses')
  Future<chopper.Response<List<HouseDto>>> _housesGet(
      {@Query('query') GetHousesQuery? query});

  ///
  ///@param id
  Future<chopper.Response<HouseDto>> housesIdGet({required String? id}) {
    generatedMapping.putIfAbsent(HouseDto, () => HouseDto.fromJsonFactory);

    return _housesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/Houses/{id}')
  Future<chopper.Response<HouseDto>> _housesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param Name
  Future<chopper.Response<List<IngredientDto>>> ingredientsGet({String? name}) {
    generatedMapping.putIfAbsent(
        IngredientDto, () => IngredientDto.fromJsonFactory);

    return _ingredientsGet(name: name);
  }

  ///
  ///@param Name
  @Get(path: '/Ingredients')
  Future<chopper.Response<List<IngredientDto>>> _ingredientsGet(
      {@Query('Name') String? name});

  ///
  ///@param id
  Future<chopper.Response<IngredientDto>> ingredientsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        IngredientDto, () => IngredientDto.fromJsonFactory);

    return _ingredientsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/Ingredients/{id}')
  Future<chopper.Response<IngredientDto>> _ingredientsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param Name
  ///@param Type
  ///@param Incantation
  Future<chopper.Response<List<SpellDto>>> spellsGet({
    String? name,
    enums.SpellType? type,
    String? incantation,
  }) {
    generatedMapping.putIfAbsent(SpellDto, () => SpellDto.fromJsonFactory);

    return _spellsGet(
        name: name,
        type: enums.$SpellTypeMap[type]?.toString(),
        incantation: incantation);
  }

  ///
  ///@param Name
  ///@param Type
  ///@param Incantation
  @Get(path: '/Spells')
  Future<chopper.Response<List<SpellDto>>> _spellsGet({
    @Query('Name') String? name,
    @Query('Type') String? type,
    @Query('Incantation') String? incantation,
  });

  ///
  ///@param id
  Future<chopper.Response<SpellDto>> spellsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(SpellDto, () => SpellDto.fromJsonFactory);

    return _spellsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/Spells/{id}')
  Future<chopper.Response<SpellDto>> _spellsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param FirstName
  ///@param LastName
  Future<chopper.Response<List<WizardDto>>> wizardsGet({
    String? firstName,
    String? lastName,
  }) {
    generatedMapping.putIfAbsent(WizardDto, () => WizardDto.fromJsonFactory);

    return _wizardsGet(firstName: firstName, lastName: lastName);
  }

  ///
  ///@param FirstName
  ///@param LastName
  @Get(path: '/Wizards')
  Future<chopper.Response<List<WizardDto>>> _wizardsGet({
    @Query('FirstName') String? firstName,
    @Query('LastName') String? lastName,
  });

  ///
  ///@param id
  Future<chopper.Response<WizardDto>> wizardsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(WizardDto, () => WizardDto.fromJsonFactory);

    return _wizardsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/Wizards/{id}')
  Future<chopper.Response<WizardDto>> _wizardsIdGet(
      {@Path('id') required String? id});
}

@JsonSerializable(explicitToJson: true)
class ElixirDto {
  ElixirDto({
    this.id,
    this.name,
    this.effect,
    this.sideEffects,
    this.characteristics,
    this.time,
    this.difficulty,
    this.ingredients,
    this.inventors,
    this.manufacturer,
  });

  factory ElixirDto.fromJson(Map<String, dynamic> json) =>
      _$ElixirDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'name', defaultValue: 'default')
  final String? name;
  @JsonKey(name: 'effect', defaultValue: 'default')
  final String? effect;
  @JsonKey(name: 'sideEffects', defaultValue: 'default')
  final String? sideEffects;
  @JsonKey(name: 'characteristics', defaultValue: 'default')
  final String? characteristics;
  @JsonKey(name: 'time', defaultValue: 'default')
  final String? time;
  @JsonKey(
    name: 'difficulty',
    toJson: elixirDifficultyToJson,
    fromJson: elixirDifficultyFromJson,
  )
  final enums.ElixirDifficulty? difficulty;
  @JsonKey(name: 'ingredients', defaultValue: <IngredientDto>[])
  final List<IngredientDto>? ingredients;
  @JsonKey(name: 'inventors', defaultValue: <ElixirInventorDto>[])
  final List<ElixirInventorDto>? inventors;
  @JsonKey(name: 'manufacturer', defaultValue: 'default')
  final String? manufacturer;
  static const fromJsonFactory = _$ElixirDtoFromJson;
  static const toJsonFactory = _$ElixirDtoToJson;
  Map<String, dynamic> toJson() => _$ElixirDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ElixirDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.effect, effect) ||
                const DeepCollectionEquality().equals(other.effect, effect)) &&
            (identical(other.sideEffects, sideEffects) ||
                const DeepCollectionEquality()
                    .equals(other.sideEffects, sideEffects)) &&
            (identical(other.characteristics, characteristics) ||
                const DeepCollectionEquality()
                    .equals(other.characteristics, characteristics)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.inventors, inventors) ||
                const DeepCollectionEquality()
                    .equals(other.inventors, inventors)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(effect) ^
      const DeepCollectionEquality().hash(sideEffects) ^
      const DeepCollectionEquality().hash(characteristics) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(inventors) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      runtimeType.hashCode;
}

extension $ElixirDtoExtension on ElixirDto {
  ElixirDto copyWith(
      {String? id,
      String? name,
      String? effect,
      String? sideEffects,
      String? characteristics,
      String? time,
      enums.ElixirDifficulty? difficulty,
      List<IngredientDto>? ingredients,
      List<ElixirInventorDto>? inventors,
      String? manufacturer}) {
    return ElixirDto(
        id: id ?? this.id,
        name: name ?? this.name,
        effect: effect ?? this.effect,
        sideEffects: sideEffects ?? this.sideEffects,
        characteristics: characteristics ?? this.characteristics,
        time: time ?? this.time,
        difficulty: difficulty ?? this.difficulty,
        ingredients: ingredients ?? this.ingredients,
        inventors: inventors ?? this.inventors,
        manufacturer: manufacturer ?? this.manufacturer);
  }

  ElixirDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? effect,
      Wrapped<String?>? sideEffects,
      Wrapped<String?>? characteristics,
      Wrapped<String?>? time,
      Wrapped<enums.ElixirDifficulty?>? difficulty,
      Wrapped<List<IngredientDto>?>? ingredients,
      Wrapped<List<ElixirInventorDto>?>? inventors,
      Wrapped<String?>? manufacturer}) {
    return ElixirDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        effect: (effect != null ? effect.value : this.effect),
        sideEffects:
            (sideEffects != null ? sideEffects.value : this.sideEffects),
        characteristics: (characteristics != null
            ? characteristics.value
            : this.characteristics),
        time: (time != null ? time.value : this.time),
        difficulty: (difficulty != null ? difficulty.value : this.difficulty),
        ingredients:
            (ingredients != null ? ingredients.value : this.ingredients),
        inventors: (inventors != null ? inventors.value : this.inventors),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer));
  }
}

@JsonSerializable(explicitToJson: true)
class ElixirInventorDto {
  ElixirInventorDto({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory ElixirInventorDto.fromJson(Map<String, dynamic> json) =>
      _$ElixirInventorDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'firstName', defaultValue: 'default')
  final String? firstName;
  @JsonKey(name: 'lastName', defaultValue: 'default')
  final String? lastName;
  static const fromJsonFactory = _$ElixirInventorDtoFromJson;
  static const toJsonFactory = _$ElixirInventorDtoToJson;
  Map<String, dynamic> toJson() => _$ElixirInventorDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ElixirInventorDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $ElixirInventorDtoExtension on ElixirInventorDto {
  ElixirInventorDto copyWith(
      {String? id, String? firstName, String? lastName}) {
    return ElixirInventorDto(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  ElixirInventorDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName}) {
    return ElixirInventorDto(
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class GetHousesQuery {
  GetHousesQuery();

  factory GetHousesQuery.fromJson(Map<String, dynamic> json) =>
      _$GetHousesQueryFromJson(json);

  static const fromJsonFactory = _$GetHousesQueryFromJson;
  static const toJsonFactory = _$GetHousesQueryToJson;
  Map<String, dynamic> toJson() => _$GetHousesQueryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class HouseDto {
  HouseDto({
    this.id,
    this.name,
    this.houseColours,
    this.founder,
    this.animal,
    this.element,
    this.ghost,
    this.commonRoom,
    this.heads,
    this.traits,
  });

  factory HouseDto.fromJson(Map<String, dynamic> json) =>
      _$HouseDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'name', defaultValue: 'default')
  final String? name;
  @JsonKey(name: 'houseColours', defaultValue: 'default')
  final String? houseColours;
  @JsonKey(name: 'founder', defaultValue: 'default')
  final String? founder;
  @JsonKey(name: 'animal', defaultValue: 'default')
  final String? animal;
  @JsonKey(name: 'element', defaultValue: 'default')
  final String? element;
  @JsonKey(name: 'ghost', defaultValue: 'default')
  final String? ghost;
  @JsonKey(name: 'commonRoom', defaultValue: 'default')
  final String? commonRoom;
  @JsonKey(name: 'heads', defaultValue: <HouseHeadDto>[])
  final List<HouseHeadDto>? heads;
  @JsonKey(name: 'traits', defaultValue: <TraitDto>[])
  final List<TraitDto>? traits;
  static const fromJsonFactory = _$HouseDtoFromJson;
  static const toJsonFactory = _$HouseDtoToJson;
  Map<String, dynamic> toJson() => _$HouseDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HouseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.houseColours, houseColours) ||
                const DeepCollectionEquality()
                    .equals(other.houseColours, houseColours)) &&
            (identical(other.founder, founder) ||
                const DeepCollectionEquality()
                    .equals(other.founder, founder)) &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.element, element) ||
                const DeepCollectionEquality()
                    .equals(other.element, element)) &&
            (identical(other.ghost, ghost) ||
                const DeepCollectionEquality().equals(other.ghost, ghost)) &&
            (identical(other.commonRoom, commonRoom) ||
                const DeepCollectionEquality()
                    .equals(other.commonRoom, commonRoom)) &&
            (identical(other.heads, heads) ||
                const DeepCollectionEquality().equals(other.heads, heads)) &&
            (identical(other.traits, traits) ||
                const DeepCollectionEquality().equals(other.traits, traits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(houseColours) ^
      const DeepCollectionEquality().hash(founder) ^
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(element) ^
      const DeepCollectionEquality().hash(ghost) ^
      const DeepCollectionEquality().hash(commonRoom) ^
      const DeepCollectionEquality().hash(heads) ^
      const DeepCollectionEquality().hash(traits) ^
      runtimeType.hashCode;
}

extension $HouseDtoExtension on HouseDto {
  HouseDto copyWith(
      {String? id,
      String? name,
      String? houseColours,
      String? founder,
      String? animal,
      String? element,
      String? ghost,
      String? commonRoom,
      List<HouseHeadDto>? heads,
      List<TraitDto>? traits}) {
    return HouseDto(
        id: id ?? this.id,
        name: name ?? this.name,
        houseColours: houseColours ?? this.houseColours,
        founder: founder ?? this.founder,
        animal: animal ?? this.animal,
        element: element ?? this.element,
        ghost: ghost ?? this.ghost,
        commonRoom: commonRoom ?? this.commonRoom,
        heads: heads ?? this.heads,
        traits: traits ?? this.traits);
  }

  HouseDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? houseColours,
      Wrapped<String?>? founder,
      Wrapped<String?>? animal,
      Wrapped<String?>? element,
      Wrapped<String?>? ghost,
      Wrapped<String?>? commonRoom,
      Wrapped<List<HouseHeadDto>?>? heads,
      Wrapped<List<TraitDto>?>? traits}) {
    return HouseDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        houseColours:
            (houseColours != null ? houseColours.value : this.houseColours),
        founder: (founder != null ? founder.value : this.founder),
        animal: (animal != null ? animal.value : this.animal),
        element: (element != null ? element.value : this.element),
        ghost: (ghost != null ? ghost.value : this.ghost),
        commonRoom: (commonRoom != null ? commonRoom.value : this.commonRoom),
        heads: (heads != null ? heads.value : this.heads),
        traits: (traits != null ? traits.value : this.traits));
  }
}

@JsonSerializable(explicitToJson: true)
class HouseHeadDto {
  HouseHeadDto({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory HouseHeadDto.fromJson(Map<String, dynamic> json) =>
      _$HouseHeadDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'firstName', defaultValue: 'default')
  final String? firstName;
  @JsonKey(name: 'lastName', defaultValue: 'default')
  final String? lastName;
  static const fromJsonFactory = _$HouseHeadDtoFromJson;
  static const toJsonFactory = _$HouseHeadDtoToJson;
  Map<String, dynamic> toJson() => _$HouseHeadDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HouseHeadDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $HouseHeadDtoExtension on HouseHeadDto {
  HouseHeadDto copyWith({String? id, String? firstName, String? lastName}) {
    return HouseHeadDto(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  HouseHeadDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName}) {
    return HouseHeadDto(
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class IngredientDto {
  IngredientDto({
    this.id,
    this.name,
  });

  factory IngredientDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'name', defaultValue: 'default')
  final String? name;
  static const fromJsonFactory = _$IngredientDtoFromJson;
  static const toJsonFactory = _$IngredientDtoToJson;
  Map<String, dynamic> toJson() => _$IngredientDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IngredientDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $IngredientDtoExtension on IngredientDto {
  IngredientDto copyWith({String? id, String? name}) {
    return IngredientDto(id: id ?? this.id, name: name ?? this.name);
  }

  IngredientDto copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name}) {
    return IngredientDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SendFeedbackCommand {
  SendFeedbackCommand({
    this.feedbackType,
    this.feedback,
    this.entityId,
  });

  factory SendFeedbackCommand.fromJson(Map<String, dynamic> json) =>
      _$SendFeedbackCommandFromJson(json);

  @JsonKey(
    name: 'feedbackType',
    toJson: feedbackTypeToJson,
    fromJson: feedbackTypeFromJson,
  )
  final enums.FeedbackType? feedbackType;
  @JsonKey(name: 'feedback', defaultValue: 'default')
  final String? feedback;
  @JsonKey(name: 'entityId', defaultValue: 'default')
  final String? entityId;
  static const fromJsonFactory = _$SendFeedbackCommandFromJson;
  static const toJsonFactory = _$SendFeedbackCommandToJson;
  Map<String, dynamic> toJson() => _$SendFeedbackCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendFeedbackCommand &&
            (identical(other.feedbackType, feedbackType) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackType, feedbackType)) &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)) &&
            (identical(other.entityId, entityId) ||
                const DeepCollectionEquality()
                    .equals(other.entityId, entityId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(feedbackType) ^
      const DeepCollectionEquality().hash(feedback) ^
      const DeepCollectionEquality().hash(entityId) ^
      runtimeType.hashCode;
}

extension $SendFeedbackCommandExtension on SendFeedbackCommand {
  SendFeedbackCommand copyWith(
      {enums.FeedbackType? feedbackType, String? feedback, String? entityId}) {
    return SendFeedbackCommand(
        feedbackType: feedbackType ?? this.feedbackType,
        feedback: feedback ?? this.feedback,
        entityId: entityId ?? this.entityId);
  }

  SendFeedbackCommand copyWithWrapped(
      {Wrapped<enums.FeedbackType?>? feedbackType,
      Wrapped<String?>? feedback,
      Wrapped<String?>? entityId}) {
    return SendFeedbackCommand(
        feedbackType:
            (feedbackType != null ? feedbackType.value : this.feedbackType),
        feedback: (feedback != null ? feedback.value : this.feedback),
        entityId: (entityId != null ? entityId.value : this.entityId));
  }
}

@JsonSerializable(explicitToJson: true)
class SpellDto {
  SpellDto({
    this.id,
    this.name,
    this.incantation,
    this.effect,
    this.canBeVerbal,
    this.type,
    this.light,
    this.creator,
  });

  factory SpellDto.fromJson(Map<String, dynamic> json) =>
      _$SpellDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'name', defaultValue: 'default')
  final String? name;
  @JsonKey(name: 'incantation', defaultValue: 'default')
  final String? incantation;
  @JsonKey(name: 'effect', defaultValue: 'default')
  final String? effect;
  @JsonKey(name: 'canBeVerbal')
  final bool? canBeVerbal;
  @JsonKey(
    name: 'type',
    toJson: spellTypeToJson,
    fromJson: spellTypeFromJson,
  )
  final enums.SpellType? type;
  @JsonKey(
    name: 'light',
    toJson: spellLightToJson,
    fromJson: spellLightFromJson,
  )
  final enums.SpellLight? light;
  @JsonKey(name: 'creator', defaultValue: 'default')
  final String? creator;
  static const fromJsonFactory = _$SpellDtoFromJson;
  static const toJsonFactory = _$SpellDtoToJson;
  Map<String, dynamic> toJson() => _$SpellDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SpellDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.incantation, incantation) ||
                const DeepCollectionEquality()
                    .equals(other.incantation, incantation)) &&
            (identical(other.effect, effect) ||
                const DeepCollectionEquality().equals(other.effect, effect)) &&
            (identical(other.canBeVerbal, canBeVerbal) ||
                const DeepCollectionEquality()
                    .equals(other.canBeVerbal, canBeVerbal)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.light, light) ||
                const DeepCollectionEquality().equals(other.light, light)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality().equals(other.creator, creator)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(incantation) ^
      const DeepCollectionEquality().hash(effect) ^
      const DeepCollectionEquality().hash(canBeVerbal) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(light) ^
      const DeepCollectionEquality().hash(creator) ^
      runtimeType.hashCode;
}

extension $SpellDtoExtension on SpellDto {
  SpellDto copyWith(
      {String? id,
      String? name,
      String? incantation,
      String? effect,
      bool? canBeVerbal,
      enums.SpellType? type,
      enums.SpellLight? light,
      String? creator}) {
    return SpellDto(
        id: id ?? this.id,
        name: name ?? this.name,
        incantation: incantation ?? this.incantation,
        effect: effect ?? this.effect,
        canBeVerbal: canBeVerbal ?? this.canBeVerbal,
        type: type ?? this.type,
        light: light ?? this.light,
        creator: creator ?? this.creator);
  }

  SpellDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? incantation,
      Wrapped<String?>? effect,
      Wrapped<bool?>? canBeVerbal,
      Wrapped<enums.SpellType?>? type,
      Wrapped<enums.SpellLight?>? light,
      Wrapped<String?>? creator}) {
    return SpellDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        incantation:
            (incantation != null ? incantation.value : this.incantation),
        effect: (effect != null ? effect.value : this.effect),
        canBeVerbal:
            (canBeVerbal != null ? canBeVerbal.value : this.canBeVerbal),
        type: (type != null ? type.value : this.type),
        light: (light != null ? light.value : this.light),
        creator: (creator != null ? creator.value : this.creator));
  }
}

@JsonSerializable(explicitToJson: true)
class TraitDto {
  TraitDto({
    this.id,
    this.name,
  });

  factory TraitDto.fromJson(Map<String, dynamic> json) =>
      _$TraitDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(
    name: 'name',
    toJson: traitNameToJson,
    fromJson: traitNameFromJson,
  )
  final enums.TraitName? name;
  static const fromJsonFactory = _$TraitDtoFromJson;
  static const toJsonFactory = _$TraitDtoToJson;
  Map<String, dynamic> toJson() => _$TraitDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TraitDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $TraitDtoExtension on TraitDto {
  TraitDto copyWith({String? id, enums.TraitName? name}) {
    return TraitDto(id: id ?? this.id, name: name ?? this.name);
  }

  TraitDto copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<enums.TraitName?>? name}) {
    return TraitDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class Unit {
  Unit();

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  static const fromJsonFactory = _$UnitFromJson;
  static const toJsonFactory = _$UnitToJson;
  Map<String, dynamic> toJson() => _$UnitToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class WizardDto {
  WizardDto({
    this.elixirs,
    this.id,
    this.firstName,
    this.lastName,
  });

  factory WizardDto.fromJson(Map<String, dynamic> json) =>
      _$WizardDtoFromJson(json);

  @JsonKey(name: 'elixirs', defaultValue: <WizardElixirDto>[])
  final List<WizardElixirDto>? elixirs;
  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'firstName', defaultValue: 'default')
  final String? firstName;
  @JsonKey(name: 'lastName', defaultValue: 'default')
  final String? lastName;
  static const fromJsonFactory = _$WizardDtoFromJson;
  static const toJsonFactory = _$WizardDtoToJson;
  Map<String, dynamic> toJson() => _$WizardDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WizardDto &&
            (identical(other.elixirs, elixirs) ||
                const DeepCollectionEquality()
                    .equals(other.elixirs, elixirs)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(elixirs) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $WizardDtoExtension on WizardDto {
  WizardDto copyWith(
      {List<WizardElixirDto>? elixirs,
      String? id,
      String? firstName,
      String? lastName}) {
    return WizardDto(
        elixirs: elixirs ?? this.elixirs,
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  WizardDto copyWithWrapped(
      {Wrapped<List<WizardElixirDto>?>? elixirs,
      Wrapped<String?>? id,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName}) {
    return WizardDto(
        elixirs: (elixirs != null ? elixirs.value : this.elixirs),
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class WizardElixirDto {
  WizardElixirDto({
    this.id,
    this.name,
  });

  factory WizardElixirDto.fromJson(Map<String, dynamic> json) =>
      _$WizardElixirDtoFromJson(json);

  @JsonKey(name: 'id', defaultValue: 'default')
  final String? id;
  @JsonKey(name: 'name', defaultValue: 'default')
  final String? name;
  static const fromJsonFactory = _$WizardElixirDtoFromJson;
  static const toJsonFactory = _$WizardElixirDtoToJson;
  Map<String, dynamic> toJson() => _$WizardElixirDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WizardElixirDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $WizardElixirDtoExtension on WizardElixirDto {
  WizardElixirDto copyWith({String? id, String? name}) {
    return WizardElixirDto(id: id ?? this.id, name: name ?? this.name);
  }

  WizardElixirDto copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name}) {
    return WizardElixirDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

String? elixirDifficultyToJson(enums.ElixirDifficulty? elixirDifficulty) {
  return enums.$ElixirDifficultyMap[elixirDifficulty];
}

enums.ElixirDifficulty elixirDifficultyFromJson(
  Object? elixirDifficulty, [
  enums.ElixirDifficulty? defaultValue,
]) {
  if (elixirDifficulty is String) {
    return enums.$ElixirDifficultyMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == elixirDifficulty.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ElixirDifficulty.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ElixirDifficultyMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ElixirDifficulty.swaggerGeneratedUnknown;
}

List<String> elixirDifficultyListToJson(
    List<enums.ElixirDifficulty>? elixirDifficulty) {
  if (elixirDifficulty == null) {
    return [];
  }

  return elixirDifficulty.map((e) => enums.$ElixirDifficultyMap[e]!).toList();
}

List<enums.ElixirDifficulty> elixirDifficultyListFromJson(
  List? elixirDifficulty, [
  List<enums.ElixirDifficulty>? defaultValue,
]) {
  if (elixirDifficulty == null) {
    return defaultValue ?? [];
  }

  return elixirDifficulty
      .map((e) => elixirDifficultyFromJson(e.toString()))
      .toList();
}

List<enums.ElixirDifficulty>? elixirDifficultyNullableListFromJson(
  List? elixirDifficulty, [
  List<enums.ElixirDifficulty>? defaultValue,
]) {
  if (elixirDifficulty == null) {
    return defaultValue;
  }

  return elixirDifficulty
      .map((e) => elixirDifficultyFromJson(e.toString()))
      .toList();
}

String? feedbackTypeToJson(enums.FeedbackType? feedbackType) {
  return enums.$FeedbackTypeMap[feedbackType];
}

enums.FeedbackType feedbackTypeFromJson(
  Object? feedbackType, [
  enums.FeedbackType? defaultValue,
]) {
  if (feedbackType is String) {
    return enums.$FeedbackTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == feedbackType.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.FeedbackType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$FeedbackTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.FeedbackType.swaggerGeneratedUnknown;
}

List<String> feedbackTypeListToJson(List<enums.FeedbackType>? feedbackType) {
  if (feedbackType == null) {
    return [];
  }

  return feedbackType.map((e) => enums.$FeedbackTypeMap[e]!).toList();
}

List<enums.FeedbackType> feedbackTypeListFromJson(
  List? feedbackType, [
  List<enums.FeedbackType>? defaultValue,
]) {
  if (feedbackType == null) {
    return defaultValue ?? [];
  }

  return feedbackType.map((e) => feedbackTypeFromJson(e.toString())).toList();
}

List<enums.FeedbackType>? feedbackTypeNullableListFromJson(
  List? feedbackType, [
  List<enums.FeedbackType>? defaultValue,
]) {
  if (feedbackType == null) {
    return defaultValue;
  }

  return feedbackType.map((e) => feedbackTypeFromJson(e.toString())).toList();
}

String? spellLightToJson(enums.SpellLight? spellLight) {
  return enums.$SpellLightMap[spellLight];
}

enums.SpellLight spellLightFromJson(
  Object? spellLight, [
  enums.SpellLight? defaultValue,
]) {
  if (spellLight is String) {
    return enums.$SpellLightMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == spellLight.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.SpellLight.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SpellLightMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SpellLight.swaggerGeneratedUnknown;
}

List<String> spellLightListToJson(List<enums.SpellLight>? spellLight) {
  if (spellLight == null) {
    return [];
  }

  return spellLight.map((e) => enums.$SpellLightMap[e]!).toList();
}

List<enums.SpellLight> spellLightListFromJson(
  List? spellLight, [
  List<enums.SpellLight>? defaultValue,
]) {
  if (spellLight == null) {
    return defaultValue ?? [];
  }

  return spellLight.map((e) => spellLightFromJson(e.toString())).toList();
}

List<enums.SpellLight>? spellLightNullableListFromJson(
  List? spellLight, [
  List<enums.SpellLight>? defaultValue,
]) {
  if (spellLight == null) {
    return defaultValue;
  }

  return spellLight.map((e) => spellLightFromJson(e.toString())).toList();
}

String? spellTypeToJson(enums.SpellType? spellType) {
  return enums.$SpellTypeMap[spellType];
}

enums.SpellType spellTypeFromJson(
  Object? spellType, [
  enums.SpellType? defaultValue,
]) {
  if (spellType is String) {
    return enums.$SpellTypeMap.entries
        .firstWhere(
            (element) => element.value.toLowerCase() == spellType.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.SpellType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SpellTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SpellType.swaggerGeneratedUnknown;
}

List<String> spellTypeListToJson(List<enums.SpellType>? spellType) {
  if (spellType == null) {
    return [];
  }

  return spellType.map((e) => enums.$SpellTypeMap[e]!).toList();
}

List<enums.SpellType> spellTypeListFromJson(
  List? spellType, [
  List<enums.SpellType>? defaultValue,
]) {
  if (spellType == null) {
    return defaultValue ?? [];
  }

  return spellType.map((e) => spellTypeFromJson(e.toString())).toList();
}

List<enums.SpellType>? spellTypeNullableListFromJson(
  List? spellType, [
  List<enums.SpellType>? defaultValue,
]) {
  if (spellType == null) {
    return defaultValue;
  }

  return spellType.map((e) => spellTypeFromJson(e.toString())).toList();
}

String? traitNameToJson(enums.TraitName? traitName) {
  return enums.$TraitNameMap[traitName];
}

enums.TraitName traitNameFromJson(
  Object? traitName, [
  enums.TraitName? defaultValue,
]) {
  if (traitName is String) {
    return enums.$TraitNameMap.entries
        .firstWhere(
            (element) => element.value.toLowerCase() == traitName.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.TraitName.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TraitNameMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TraitName.swaggerGeneratedUnknown;
}

List<String> traitNameListToJson(List<enums.TraitName>? traitName) {
  if (traitName == null) {
    return [];
  }

  return traitName.map((e) => enums.$TraitNameMap[e]!).toList();
}

List<enums.TraitName> traitNameListFromJson(
  List? traitName, [
  List<enums.TraitName>? defaultValue,
]) {
  if (traitName == null) {
    return defaultValue ?? [];
  }

  return traitName.map((e) => traitNameFromJson(e.toString())).toList();
}

List<enums.TraitName>? traitNameNullableListFromJson(
  List? traitName, [
  List<enums.TraitName>? defaultValue,
]) {
  if (traitName == null) {
    return defaultValue;
  }

  return traitName.map((e) => traitNameFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
