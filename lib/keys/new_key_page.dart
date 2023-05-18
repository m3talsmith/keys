import 'package:flutter/material.dart';
import 'package:keys/keys/key_model.dart';

class NewKeyPage extends StatefulWidget {
  const NewKeyPage({super.key});
  @override
  State<StatefulWidget> createState() => _NewKeyPageState();
}

class _NewKeyPageState extends State<NewKeyPage> {
  String? name;

  submit(BuildContext context) async {
    var nav = Navigator.of(context);
    KeyModel key = await KeyModel.generate(name: name);
    nav.pop(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Key'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextField(
            decoration:
                const InputDecoration(icon: Icon(Icons.text_fields_rounded)),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
            onSubmitted: (_) {
              submit(context);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    submit(context);
                  },
                  icon: const Icon(Icons.save_alt_rounded),
                  label: const Text('Create Key'))
            ],
          )
        ],
      ),
    );
  }
}
