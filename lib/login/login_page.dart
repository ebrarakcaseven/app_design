import 'package:app_design/login/register_page.dart';
import 'package:app_design/pages/home_page.dart';
import 'package:app_design/service/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ignore: prefer_final_fields
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                    height: 380.0,
                    width: 400.0,
                    child: Image.asset('assets/images/img3.jpg')),
                Container(
                  height: size.height * .4,
                  width: size.width * .85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.75),
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: size.height * .4,
                        width: size.width * .85,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                    controller: _emailController,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        color: Colors.black,
                                      ),
                                      hintText: 'E-Mail',
                                      prefixText: ' ',
                                      hintStyle: TextStyle(color: Colors.black),
                                      focusColor: Colors.black,
                                    )),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                TextField(
                                    controller: _passwordController,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    cursorColor: Colors.black,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Password',
                                      prefixText: ' ',
                                      hintStyle: TextStyle(color: Colors.black),
                                      focusColor: Colors.black,
                                    )),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InkWell(
                                  onTap: () {
                                    _authService
                                        .signIn(_emailController.text,
                                            _passwordController.text)
                                        .then((value) {
                                      return Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Home()));
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Center(
                                          child: Text(
                                        "Login",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Register()));
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text(
                                        "Do you have an account?",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      InkWell(
                                        child: const Text("Create account",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Register()),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
