import 'dart:ui';
import 'package:app_design/pages/person_page.dart';
import 'package:app_design/service/status_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_final_fields
  StatusService _statusService = StatusService();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            StreamBuilder<QuerySnapshot>(
                stream: _statusService.getProducts(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Text(
                      'Loading...',
                    );
                  } else {
                    return GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        controller: _controller,
                        itemCount: snapshot.data?.docs.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5,
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          DocumentSnapshot mypost = snapshot.data!.docs[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFCBE3FF),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(11))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      /* Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: CircleAvatar(
                                            backgroundImage: mypost['image'] ==
                                                    ""
                                                ? const NetworkImage(
                                                    "https://www.gentas.com.tr/wp-content/uploads/2021/05/3190-siyah_renk_g483_1250x1000_t3cksofn.jpg")
                                                : NetworkImage(mypost['image']),
                                            radius: size.height * 0.08,
                                          ),
                                        ),
                                      ),*/
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("${mypost['name']}",
                                            style:
                                                const TextStyle(fontSize: 22)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("${mypost['price']}",
                                            style:
                                                const TextStyle(fontSize: 22)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                }),
          ],
        ),
      ),
    );
  }
}
