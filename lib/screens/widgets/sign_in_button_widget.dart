

import 'package:flutter/material.dart';
import '../sign_in_screen.dart';

class SignInButtonWidget extends StatelessWidget {
  final Function()? onTap;
  const SignInButtonWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignPage(),
            ));
      },
      child: const Text(
        'SIGN IN',
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          fontSize: 18,
        ),
      ),
    );
  }
}
