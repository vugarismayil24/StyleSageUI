// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'global_v.dart';
import 'screens/registration_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    sw = MediaQuery.of(context).size.width;
    sh = MediaQuery.sizeOf(context).height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: RegistrationScreen(),
    );
  }
}
