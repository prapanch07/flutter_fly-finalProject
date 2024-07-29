import 'package:e_commerce/db_functions.dart';
import 'package:e_commerce/screens/first_screen.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:e_commerce/widgets/button.dart';
import 'package:e_commerce/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List userdata = [];

  @override
  void initState() {
    // TODO: implement initState
    getlogindetails();
    setState(() {});
    super.initState();
  }

  void getlogindetails() async {
    userdata = await getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    final emailctrler = TextEditingController();
    final passctrler = TextEditingController();
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
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(50),
              CustomTextField(
                controller: emailctrler,
                labeltext: "Email",
              ),
              CustomTextField(
                controller: passctrler,
                labeltext: "Password",
              ),
              InkWell(
                onTap: () => {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget your password?',
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
                text: "LOGIN",
                function: () => {
                  print(userdata),
                  if (userdata.contains(emailctrler.text))
                    {
                      _navigateToHome(context),
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Logged in as $username"),
                        ),
                      )
                    }
                  else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid user details"),
                        ),
                      )
                    }
                },
              ),
              const Gap(170),
              const Center(
                child: Text(
                  "Or login with social account",
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

  void _navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FirstScreen(),
      ),
    );
  }
}
