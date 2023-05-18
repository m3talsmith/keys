import 'package:isar/isar.dart';
import 'package:keys/keys/key_model.dart';
import 'package:path_provider/path_provider.dart';

Future<Isar> openDatabase() async {
  final dir = await getApplicationDocumentsDirectory();
  return await Isar.open([KeyModelSchema], directory: dir.path);
}

Isar? database;
