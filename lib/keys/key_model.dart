import 'package:cryptography/cryptography.dart';
import 'package:isar/isar.dart';

part 'key_model.g.dart';

@collection
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

  Id id = Isar.autoIncrement;
  String? name;
  List<int> private = [];
  List<int> public = [];
  @ignore
  SimpleKeyPair? pair;
}
