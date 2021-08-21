import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nameControl = new TextEditingController();
  var _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey.shade300,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameControl,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    alignLabelWithHint: true, hintText: "Enter Name"),
              ),
            ),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                setState(() {
                  _name = nameControl.text;
                });
                final snackBar = SnackBar(
                  content: Text(
                      "Your Name is $_name"), //Displays name using Snackbar
                  backgroundColor: Colors.blue,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: new Text(
                  'Click image to visit site',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () => launch('https://training.zuri.team/'),
                  child: ImageAsset()),
            )
          ],
        ),
      ),
    );
  }
}
