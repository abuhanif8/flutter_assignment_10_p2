import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/walkthrough1.dart';
import 'package:flutter_assignment_10_p2/ui/walkthrough2.dart';

import 'appcolor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => WalkThroughOne())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deep_gray,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Assignment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 44),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Project-2",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 44),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
