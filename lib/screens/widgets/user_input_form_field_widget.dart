// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_super_parameters, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../global_v.dart';

class UserInputFormFieldWidget extends StatelessWidget {
  final String hintText;

  UserInputFormFieldWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.4 * sw,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
