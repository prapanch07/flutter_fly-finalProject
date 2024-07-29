import 'package:e_commerce/db_functions.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:e_commerce/widgets/button.dart';
import 'package:e_commerce/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailctrler = TextEditingController();
    final passctrler = TextEditingController();
    final namectrler = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
      ),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(50),
              CustomTextField(
                controller: namectrler,
                labeltext: "name",
              ),
              CustomTextField(
                controller: emailctrler,
                labeltext: "Email",
              ),
              CustomTextField(
                controller: passctrler,
                labeltext: "Password",
              ),
              InkWell(
                onTap: () => _navigateToLogin(context),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Already have an account?',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: red,
                    )
                  ],
                ),
              ),
              const Gap(15),
              CustomButton(
                text: "SIGN UP",
                function: () {
                  if (emailctrler.text.isNotEmpty &&
                      passctrler.text.isNotEmpty) {
                    username = namectrler.text;
                    useremail = emailctrler.text;
                        inserUserDetails(emailctrler.text, passctrler.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                },
              ),
              const Gap(100),
              const Center(
                child: Text(
                  "Or sign up with social account",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: NetworkImage(gicon),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const Gap(15),
                  Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Image(
                      image: NetworkImage(fbicon),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
}
