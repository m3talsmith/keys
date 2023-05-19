import 'dart:developer';
import 'dart:io';

import 'package:cryptography/cryptography.dart';
import 'package:keys/io_utils.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

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
    var keydirs = keysDir
        .listSync()
        .where((e) => e.statSync().type == FileSystemEntityType.directory)
        .toList();
    for (var e in keydirs) {
      var private = await File(join(e.path, 'key')).readAsBytes();
      var public = await File(join(e.path, 'pub')).readAsBytes();
      var key = KeyModel(name: e.path.split(separator).last);
      key.public = public;
      key.private = private;
      keys.add(key);
    }
    return keys;
  }

  KeyModel.fromBytes({
    required this.name,
    required this.private,
    required this.public,
  }) {
    var pairType = X25519().keyPairType;
    var pub = SimplePublicKey(public, type: pairType);
    pair = SimpleKeyPairData(private, publicKey: pub, type: pairType);
  }

  save() async {
    var keysDir = await IoUtils.applicationKeysDirectory;
    var keyDir = Directory(join(keysDir.path, name));
    await keyDir.create(recursive: true);
    await File(join(keyDir.path, 'key')).writeAsBytes(private);
    await File(join(keyDir.path, 'pub')).writeAsBytes(public);
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
