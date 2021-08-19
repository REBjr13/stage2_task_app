import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nameControl = new TextEditingController();
  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App")),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameControl,
                  keyboardType: TextInputType.name,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _name = nameControl as String;
                    });
                  },
                  child: Text("Submit")),
              Text('Your name is $_name',
              style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
