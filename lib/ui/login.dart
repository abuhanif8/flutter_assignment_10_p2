import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_10_p2/ui/walkthrough3.dart';
import 'package:flutter_assignment_10_p2/widgets/text.dart';

import 'forgotpassword.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

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
              'Welcome Back!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Enter your details to continue',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
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
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'hanif@mail.com',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '**********',
                  prefixIcon: Icon(Icons.lock_outlined),
                  suffix: Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed :
                          () => Navigator.push(
                          context, CupertinoPageRoute(builder: (_) => const ForgotPassword())),

                    child: Text(
                      'Forgot Password?',
                      style: myStyle(11, Colors.green),

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                   ),
                onPressed:  () => Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => const ForgotPassword())),
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Need an account?',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('asset/fingerprint.png'),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Tap to use fingerprint',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
