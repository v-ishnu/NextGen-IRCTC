import 'package:flutter/material.dart';
import "package:nextgen_irctc/login.dart";
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'login',
    // routes: {'login' : (context) => MyLogin()},
    home: MyLogin(),
  ));
}
