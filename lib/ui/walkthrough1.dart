import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/walkthrough2.dart';

import 'login.dart';

class WalkThroughOne extends StatefulWidget {
  const WalkThroughOne({Key? key}) : super(key: key);

  @override
  State<WalkThroughOne> createState() => _WalkThroughOneState();
}

class _WalkThroughOneState extends State<WalkThroughOne> {

  void initState() {
    Timer(
        Duration(seconds: 1),
            () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => WalkThroughTwo())));
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
                    image: AssetImage('asset/Frame1.png'),
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
                            'Send Money Anywhere',
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
                            'With our unique technology, You can get \n money anywhere in the world  ',
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
