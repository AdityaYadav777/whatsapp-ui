import 'package:flutter/material.dart';

import 'HomePage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          indicatorColor: Colors.white,

        ),
            primaryColorDark: Colors.green,
            primaryColorLight: Colors.green,
            primaryColor: Colors.green,
            primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
