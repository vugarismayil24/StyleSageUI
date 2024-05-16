// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoremTextWidget extends StatelessWidget {
  final String text;
  final String? secontext;
  const LoremTextWidget({
    Key? key,
    required this.text,
    this.secontext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.grey),
        children: [
          TextSpan(
            text: text,
          ),
          TextSpan(
            text: secontext,
            style: TextStyle(color: Color(0xffFF4312), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//Lorem Ipsum has been the \nstandard dummy text ever