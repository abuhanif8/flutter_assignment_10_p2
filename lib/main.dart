import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'project two',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SplashScreen(),
    );
  }
}
