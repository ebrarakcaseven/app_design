import 'package:app_design/login/login_page.dart';
import 'package:app_design/login/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Column(
            children: [
              Container(
                  height: 380.0,
                  width: 400.0,
                  child: Image.asset('images/img3.jpg')),
              Container(
                height: size.height * .4,
                width: size.width * .85,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: size.height * .4,
                      width: size.width * .85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const TextField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
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
                              const TextField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  cursorColor: Colors.black,
                                  obscureText: true,
                                  decoration: InputDecoration(
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
                                onTap: () {},
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
                                          builder: (context) => Register()));
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
                                      child: Text("Create account",
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
