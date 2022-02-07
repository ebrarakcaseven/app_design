import 'package:app_design/login/login_page.dart';
import 'package:app_design/service/auth_service.dart';
import 'package:app_design/service/status_service.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

LoginPage login = const LoginPage();
// ignore: unused_element
AuthService _authService = AuthService();
// ignore: unused_element
StatusService _statusService = StatusService();
// ignore: unused_element
final ScrollController _controller = ScrollController();

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    /* return FutureBuilder<FirebaseUser>(
        future: FirebaseAuth.instance.currentUser(),
        builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
          if (snapshot.hasData) {
            FirebaseUser user = snapshot.data; // this is your user instance
            /// is because there is user already logged
            return MainScreen();
          }

          /// other way there is no user logged.
          return LoginScreen();
        });*/

    // ignore: unused_local_variable
    return Scaffold(
      body: Stack(children: [
        login,
      ]),
    );
  }
}
