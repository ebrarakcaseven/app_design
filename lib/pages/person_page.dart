import 'package:app_design/login/login_page.dart';
import 'package:app_design/login/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

LoginPage login = LoginPage();

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        login,
        Padding(
          padding: EdgeInsets.only(
              top: size.height * .06, left: size.width * .02, bottom: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 26,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
