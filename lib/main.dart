import 'package:cm30_test2/pages/dashboard.dart';
import 'package:cm30_test2/pages/home.dart';
import 'package:cm30_test2/pages/login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tm30_test',
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashBoard(),
      },
      //home: const MyHomePage(),
    );
  }
}