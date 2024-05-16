
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../global_v.dart';
import 'registration_screen.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 0.05 * sw,
          right: 0.05 * sw,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.1 * sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ));
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.05 * sh,
              ),
              const Text(
                'Have an Account?',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              const Text(
                'Sing in to speed up the checkout',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              const Text(
                'process and manage your orders',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 0.07 * sh,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(hintText: 'Email Adress'),
              ),
              SizedBox(
                height: 0.01 * sh,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              SizedBox(
                height: 0.006 * sh,
              ),
              Container(
                alignment: Alignment.topRight,
                child: const Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    )),
              ),
              SizedBox(
                height: 0.2 * sh,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 0.06 * sh,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Sign in ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 0.03 * sh,
              ),
              const Text(
                'Or',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 0.03 * sh,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.google),
                  FaIcon(FontAwesomeIcons.apple),
                  FaIcon(FontAwesomeIcons.twitter)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
