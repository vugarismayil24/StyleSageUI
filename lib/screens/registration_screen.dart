import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:style_sage_app/screens/widgets/other_input_widget.dart';
import '../global_v.dart';
import 'widgets/lorem_text_widget.dart';
import 'widgets/sign_in_button_widget.dart';
import 'widgets/user_input_form_field_widget.dart';

class RegistrationScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final eMailController = TextEditingController();

  RegistrationScreen({
    super.key,
  });

  void dispose() {
    usernameController.dispose();
    eMailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StyleSage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.02 * sh),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "REGISTER",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SignInButtonWidget(),
              ],
            ),
            SizedBox(
              height: 0.05 * sh,
            ),
            const Text(
              "NEW TO OPEN FASHION?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 0.01 * sh,
            ),
            const LoremTextWidget(
              text: "Lorem Ipsum has been the \nstandard dummy text ever",
            ),
            SizedBox(
              height: 0.08 * sh,
            ),
            Row(
              children: [
                UserInputFormFieldWidget(
                  hintText: "FirstName",
                ),
                SizedBox(
                  width: 0.07 * sw,
                ),
                UserInputFormFieldWidget(
                  hintText: "LastName",
                ),
              ],
            ),
            SizedBox(
              height: 0.02 * sh,
            ),
            const OtherInputFormFieldWidget(
              hintText: "Email Address",
            ),
            SizedBox(
              height: 0.02 * sh,
            ),
            const OtherInputFormFieldWidget(
              hintText: "Password",
            ),
            SizedBox(
              height: 0.03 * sh,
            ),
            const LoremTextWidget(
              text: "By you clicking Register Now you aggree to our\n",
              secontext: "Term of Conditions and Privary Policy",
            ),
            SizedBox(
              height: 0.08 * sh,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 0.06 * sh,
              decoration: BoxDecoration(
                color: const Color(0xffFF4312),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'REGISTER NOW',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Or',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.03 * sh,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: const FaIcon(
                  FontAwesomeIcons.google,
                  size: 40,
                ),),
                
                const FaIcon(
                  FontAwesomeIcons.apple,
                  size: 50,
                ),
                const FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
