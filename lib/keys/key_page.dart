import 'package:flutter/material.dart';
import 'package:keys/keys/key_model.dart';
import 'package:convert/convert.dart';

class KeyPage extends StatelessWidget {
  const KeyPage({super.key, required this.model});
  final KeyModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.name!),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Column(
                children: [Icon(Icons.vpn_key_rounded), Text('Private')]),
            title: Text(hex.encode(model.private)),
          ),
          ListTile(
            leading: const Column(
                children: [Icon(Icons.key_rounded), Text('Public')]),
            title: Text(hex.encode(model.public)),
          ),
        ],
      ),
    );
  }
}
