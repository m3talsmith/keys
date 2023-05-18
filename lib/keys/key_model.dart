import 'dart:developer';
import 'dart:io';

import 'package:convert/convert.dart';
import 'package:cryptography/cryptography.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:keys/io_utils.dart';

class KeyModel {
  KeyModel({this.name});
  static Future<KeyModel> generate({String? name}) async {
    KeyModel key = KeyModel(name: name);
    final algo = X25519();
    key.pair = await algo.newKeyPair();
    key.private = await key.pair!.extractPrivateKeyBytes();
    final public = await key.pair!.extractPublicKey();
    key.public = public.bytes;
    return key;
  }

  static Future<List<KeyModel>> get keys async {
    var keysDir = await IoUtils.applicationKeysDirectory;
    List<KeyModel> keys = [];
    var keyModels = keysDir
        .listSync()
        .where((e) => e.statSync().type == FileSystemEntityType.directory)
        .map((e) async {
      var private = await File(join(e.path, 'key')).readAsBytes();
      var public = await File(join(e.path, 'pub')).readAsBytes();
      return KeyModel(name: e.path.split(separator).last)
        ..private = private
        ..public = public;
    });
  }

  static logKeyEntries() async {
    var dir = await getApplicationSupportDirectory();
    log('dir: ${dir.path}');
    await for (var e in dir.list()) {
      log('Entry => ${e.statSync().type}: ${e.path}');
    }
  }

  String? name;
  List<int> private = [];
  List<int> public = [];

  SimpleKeyPair? pair;
}
