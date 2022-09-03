import 'dart:js';

import 'package:flutter/material.dart';

TextFormField myTextFormField ({controller,decoration,style, label,hintText, prefixIcon,obscureText,})=> TextFormField(
  controller: controller,
  obscureText: false,

  decoration: InputDecoration(
    label:label,
    hintText: hintText,
    prefixIcon: prefixIcon,


  ) ,
  style:style ,
);

TextStyle myStyle (fontSize,color)=> TextStyle(
  color: color ,
  fontSize:fontSize ,
  fontWeight: FontWeight.bold,

);

ElevatedButton myButton ({destination,text,context})=> ElevatedButton(
onPressed: () => Navigator.of(context)
.push(MaterialPageRoute(builder: (context) => destination)),
style: ElevatedButton.styleFrom(
primary: Colors.black,
padding: EdgeInsets.symmetric(
horizontal: 50, vertical: 20),
),
child: Text(
'text',
style: TextStyle(
color: Colors.white,
fontSize: 17,
fontWeight: FontWeight.bold,
),
),
);