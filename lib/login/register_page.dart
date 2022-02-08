import 'package:app_design/service/auth_service.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();
  // ignore: prefer_final_fields
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: size.height * .7,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                          controller: _nameController,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: 'Kullanıcı adı',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.black,
                          )),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
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
                        height: size.height * 0.02,
                      ),
                      TextField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          controller: _passwordController,
                          cursorColor: Colors.black,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black,
                            ),
                            hintText: 'Parola',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.black,
                          )),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          controller: _passwordAgainController,
                          cursorColor: Colors.black,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black,
                            ),
                            hintText: 'Parola Tekrar',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.black,
                          )),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          _authService.createPerson(_nameController.text,
                              _emailController.text, _passwordController.text);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              //color: colorPrimaryShade,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                                child: Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                SizedBox(
                  width: size.width * 0.3,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
