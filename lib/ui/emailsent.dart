import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 332,
            height: 448,
            color: Colors.white,
            child: Column(
              children: [
                Icon(
                  Icons.inbox_outlined,
                  color: Colors.green,
                  size: 150,
                ),
                Text(
                  'Check your inbox',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'An email has been sent to you. \n        Click the link to reset \n         your password.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () => Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => const EmailSent())),
                    child: Center(
                      child: Text(
                        'Check Mail',
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
        ],
      ),
    );
  }
}
