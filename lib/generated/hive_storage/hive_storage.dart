import 'package:hive/hive.dart';

part 'hive_storage.g.dart';

@HiveType(typeId: 1)
class KeyElixir {
  @HiveField(0)
  String urlElixir;
  KeyElixir({
    required this.urlElixir,
  });
}

@HiveType(typeId: 2)
class KeyHouse {
  @HiveField(0)
  String urlHouse;
  KeyHouse({
    required this.urlHouse,
  });
}

@HiveType(typeId: 3)
class KeySpel {
  @HiveField(0)
  String urlSpel;
  KeySpel({
    required this.urlSpel,
  });
}

@HiveType(typeId: 4)
class KeyWizard {
  @HiveField(0)
  String urlWizard;
  KeyWizard({
    required this.urlWizard,
  });
}
