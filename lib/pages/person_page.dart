import 'package:app_design/login/login_page.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

LoginPage login = const LoginPage();

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        login,
      ]),
    );
  }
}
