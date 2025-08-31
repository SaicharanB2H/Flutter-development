import 'package:flutter/material.dart';

void fullName(String firstname, String LastName) {
  print("$firstname $LastName");
  var names = ["sai ", "bhargav"];
  print(names[1]);

  var dta = {'sai', 'charan'};
  var dic = {"name": 'saicharna', "age": 20};
}

void main() {
  runApp(MyApp());
}

// StatefulWidget allows the UI to change
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText = "Hello Flutter!"; // initial text

  void toggleText() {
    setState(() {
      if (displayText == "Hello Flutter!") {
        displayText = "You pressed the button";
      } else {
        displayText = "hello world";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    fullName("sai", "charan");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Interactive App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(displayText, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20), // adds space between text and button
              ElevatedButton(onPressed: toggleText, child: Text("Press Me")),
            ],
          ),
        ),
      ),
    );
  }
}
