import 'package:flutter/material.dart';

void fullName(String firstname, String LastName) {
  print("$firstname $LastName");
  var names = ["sai ", "bhargav"];
  print(names[1]);

  var dta = {'sai', 'charan'};
  var dic = {"name": 'saicharna', "age": 20};

  const String? naem = null;
}

class Person {
  void run() {
    print("person is running");
  }

  void breathe() {
    print("person is breathing");
  }
}

void test() {
  var per = Person();
  per.run();
}

var cnt = 0;
void main() {
  runApp(
    MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyApp(),
    ),
  );
}

// StatefulWidget allows the UI to change

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhonePay"),
        backgroundColor: Color.fromARGB(226, 254, 68, 111),
      ),
      body: Column(
        children: [
          TextField(controller: _email,decoration: InputDecoration(hintText: "Email"),),
          TextField(controller: _password,decoration: InputDecoration(hintText: "Password"),),
          TextButton(onPressed: () async {}, child: const Text("Register")),
        ],
      ),
    );
  }
}
  
//network