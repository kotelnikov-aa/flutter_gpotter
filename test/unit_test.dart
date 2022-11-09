import 'package:flutter_gpotter/generated/hive_storage/hive_storage.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gpotter/data/favorite_get_set/hive_data/make_key_get_id.dart';
import 'package:flutter_gpotter/generated/mobx/mail_validator.dart';

void main() {
  test('Проверка функции возвращения ID по сущностям API', () {
    final result = getIdfromApiInstance(ElixirDto());
    expect(result, equals(''));

  });

  test('Проверка существования e-mail в базе данных', () async {
    final result =  await checkEmailInUsed('aleksey.a.kotelnikov@sibir.rt.ru');
    expect(result, true);
  });
}