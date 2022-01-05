import 'dart:ui';

import 'package:app_design/pages/person_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: 295.0,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Search",
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 14.0,
                                right: 16.34,
                                top: 14.0,
                                bottom: 14.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 40.0),
                    child: InkWell(
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Image.asset('assets/images/img.png'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Person()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0, top: 16.0),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 343,
                height: 41,
                child: const Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Container(
                            width: 73.75,
                            height: 64.0,
                            decoration: const BoxDecoration(
                                color: Color(0xFFCBE3FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Icon(
                              Icons.camera_alt,
                              size: 30.0,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                            width: 73.75,
                            height: 64.0,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFF2AE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Icon(
                              Icons.watch_later,
                              size: 30.0,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Container(
                            width: 73.75,
                            height: 64.0,
                            decoration: const BoxDecoration(
                                color: Color(0xFFECDDFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Icon(
                              Icons.favorite,
                              size: 30.0,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Container(
                            width: 73.75,
                            height: 64.0,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFDBF5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Icon(
                              Icons.navigation,
                              size: 30.0,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Container(
                            width: 73.75,
                            height: 64.0,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFF2AE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Icon(
                              Icons.face,
                              size: 30.0,
                            )),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 378.0,
                    height: 200.0,
                    decoration: const BoxDecoration(
                        color: Color(0xFFECDDFF),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 25.0, right: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165.0,
                        height: 248.0,
                        decoration: const BoxDecoration(
                            color: Color(0xFFCBE3FF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                      ),
                      Container(
                        width: 165.0,
                        height: 248.0,
                        decoration: const BoxDecoration(
                            color: Color(0xFFCBE3FF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 165.0,
                          height: 248.0,
                          decoration: const BoxDecoration(
                              color: Color(0xFFCBE3FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                        ),
                        Container(
                          width: 165.0,
                          height: 248.0,
                          decoration: const BoxDecoration(
                              color: Color(0xFFCBE3FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
