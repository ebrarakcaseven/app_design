import 'package:app_design/nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // ignore: avoid_print
    print('baglantı oldu');
  } catch (e) {
    // ignore: avoid_print
    print('hata');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Nav(),
    );
  }
}





/* return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const Nav(),
      },
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            Overlay(
              initialEntries: [
                OverlayEntry(
                  builder: (context) {
                    return Home();
                  },
                )
              ],
            ),
          ],
        );
      },
    );*/
