import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/walkthrough3.dart';

import 'login.dart';

class WalkThroughTwo extends StatefulWidget {
  const WalkThroughTwo({Key? key}) : super(key: key);

  @override
  State<WalkThroughTwo> createState() => _WalkThroughTwoState();
}

class _WalkThroughTwoState extends State<WalkThroughTwo> {

  void initState() {
    Timer(
        Duration(seconds: 1),
            () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => WalkThroughThree())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 270,
                width: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('asset/Frame2.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Safe & Secured',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Safety of your fund is guaranteed. We\'ve \n got you covered 24/7  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const LogIn())),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('TRY SUTRAQ', style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
