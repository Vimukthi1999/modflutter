import 'package:flutter/material.dart';
import 'package:modflutterapp/res/default_data.dart';

Future<void> appSelectLanguage(BuildContext context) async {
  await showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        // <-- SEE HERE
        title: const Text('Select Language'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(Language.english.toString()),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(Language.sinhala.toString()),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(Language.tamil.toString()),
          ),
        ],
      );
    },
  );
}
// --- Button Widget --- //
// ElevatedButton(
//   onPressed: _showSimpleDialog,
//   child: const Text(
//     'Show Simple Dialog',
//     style: TextStyle(fontSize: 24),
//   ),
// ),