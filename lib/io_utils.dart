import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class IoUtils {
  static createBaseDirectories() async {
    var keysDir = await applicationKeysDirectory;
    await keysDir.create(recursive: true);
  }

  static Future<Directory> get applicationDataDirectory async {
    var baseDir = await getApplicationSupportDirectory();
    return Directory(join(baseDir.absolute.path, 'data'));
  }

  static Future<Directory> get applicationKeysDirectory async {
    var baseDir = await applicationDataDirectory;
    return Directory(join(baseDir.absolute.path, 'keys'));
  }
}
