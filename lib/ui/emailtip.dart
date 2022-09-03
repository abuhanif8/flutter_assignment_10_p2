import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/dasboard.dart';

class EmailTip extends StatelessWidget {
  const EmailTip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('asset/idea 1.png'),
                  ),
                ),
              ),
              SizedBox(height: 200,),

              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () => Navigator.push(
                      context, CupertinoPageRoute(builder: (_) => const DashBoard())),
                  child: Center(
                    child: Text(
                      'Got it!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
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
