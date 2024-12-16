import 'package:asyn_await_app/homepage.dart';
import 'package:asyn_await_app/page2.dart';
import 'package:asyn_await_app/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage()
      initialRoute: '/',
      routes: {
        '/':(context) => const Homepage(),
        '/page2':(context)=> const Page2(),
        '/page3':(context) => const Page3()
      },
    );
  }
}
