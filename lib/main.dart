import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/AboutPage.dart';
import 'package:flutter_application_1/pages/ContactPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/widgets/footer.dart';
import 'package:flutter_application_1/widgets/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/about':(context) => AboutPage(),
        '/contact':(context) => ContactPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


