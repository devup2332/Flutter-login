import 'package:flutter/material.dart';
import 'package:test_2/screens/home.dart';
import 'package:test_2/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/home",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff191720),
        primaryColor: Color(0xfffafafa),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen()
      },
    );
  }
}
