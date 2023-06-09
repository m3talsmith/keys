import 'dart:io';

import 'package:flutter/material.dart';
import 'package:keys/io_utils.dart';
import 'package:keys/keys/keys_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IoUtils.createBaseDirectories();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Keys',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const KeysPage(),
    );
  }
}
