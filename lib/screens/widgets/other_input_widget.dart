
import 'package:flutter/material.dart';

import '../../global_v.dart';

class OtherInputFormFieldWidget extends StatelessWidget {

  final String hintText;

  const OtherInputFormFieldWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.87* sw,
      child: TextFormField(

        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
