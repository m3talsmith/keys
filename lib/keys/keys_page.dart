// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:convert/convert.dart';
import 'package:keys/keys/key_model.dart';
import 'package:keys/keys/key_page.dart';
import 'package:keys/keys/new_key_page.dart';

class KeysPage extends StatefulWidget {
  const KeysPage({super.key});
  @override
  State<StatefulWidget> createState() => _KeysPageState();
}

class _KeysPageState extends State<KeysPage> {
  List<KeyModel> keys = [];

  Future<List<KeyModel>> getKeys() async {
    // return await database!.keyModels.where().findAll();
    return [];
  }

  newKey(BuildContext context) async {
    KeyModel? key = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NewKeyPage()));
    await KeyModel.logKeyEntries();
    // if (key != null) {
    //   var db = database!;
    //   try {
    //     await db.writeTxn(() async {
    //       await db.keyModels.put(key);
    //     });
    //     log('Key added: public: ${hex.encode(key.public)}');
    //   } catch (e) {
    //     log('Error writing: $e');
    //   }
    //   keys = await getKeys();
    //   setState(() {
    //     keys = keys;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: KeyModel.keys,
          builder:
              (BuildContext context, AsyncSnapshot<List<KeyModel>> snapshot) {
            if (snapshot.hasData) {
              keys = snapshot.data!;
            }
            if (keys.isNotEmpty) {
              return ListView(
                children: keys
                    .map((e) => ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => KeyPage(model: e)));
                          },
                          title: Text(e.name!),
                          leading: const Icon(Icons.key_rounded),
                        ))
                    .toList(),
              );
            }
            return Center(
              child: ElevatedButton.icon(
                  onPressed: () async {
                    await newKey(context);
                  },
                  icon: const Icon(Icons.add_rounded),
                  label: const Text('Create a Key')),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await newKey(context);
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
