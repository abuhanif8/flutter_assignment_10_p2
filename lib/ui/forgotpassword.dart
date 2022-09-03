import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/emailtip.dart';
import 'package:flutter_assignment_10_p2/widgets/text.dart';

import 'emailsent.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('asset/splashscreen.png'),
                  ),
                ),
              ),
            ),
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Text(
              'Enter the email address associated with \n your account to recover password.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: myStyle(
                      14,
                      Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'hanif@mail.com',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                   ),
                onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => const EmailTip())),
                child: Center(
                  child: Text(
                    'Recover Password',
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
    );
  }
}
