import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

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
      appBar: AppBar(title: Text("App")),
      body: Container(
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
            Image.asset("images/zuri.jpeg", height: 280.0, width: 180.0, scale: 1.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: new InkWell(
                    child: new Text(
                      'Click Here',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () => launch('https://training.zuri.team/')),
              ),
            ),
            Image.asset(
              'images/zuri.jpeg',
              width: 280,
              height: 180,
            )
          ],
        ),
      ),
    );
  }
}
