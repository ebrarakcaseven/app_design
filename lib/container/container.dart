import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_design/service/status_service.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  // ignore: prefer_final_fields
  StatusService _statusService = StatusService();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("PRODUCTS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: _statusService.getProducts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text(
                'Loading...',
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot mypost = snapshot.data!.docs[index];

                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 100.0, right: 100.0, bottom: 10.0, top: 10.0),
                      child: Container(
                        height: 248.0,
                        decoration: BoxDecoration(
                            color: const Color(0xFFCBE3FF),
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(11))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: CircleAvatar(
                                      backgroundImage: mypost['image'] == ""
                                          ? const NetworkImage(
                                              "https://www.gentas.com.tr/wp-content/uploads/2021/05/3190-siyah_renk_g483_1250x1000_t3cksofn.jpg")
                                          : NetworkImage(mypost['image']),
                                      radius: size.height * 0.08,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${mypost['name']}",
                                      style: const TextStyle(fontSize: 22)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${mypost['price']}",
                                      style: const TextStyle(fontSize: 22)),
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
    );
  }
}
