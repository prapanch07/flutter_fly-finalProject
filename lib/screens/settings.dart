import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();
    final dobcontroller = TextEditingController();
    final passcontroller = TextEditingController();

    dobcontroller.text = "12/12/1989";
    passcontroller.text = "soulpk@9721";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: background,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Gap(20),
              const Text(
                "Persional Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const Gap(10),
              SettingsTextField(
                controller: namecontroller,
                labeltext: "Full name",
                readonly: false,
              ),
              const Gap(10),
              SettingsTextField(
                controller: dobcontroller,
                labeltext: "Date of Birth",
                readonly: true,
              ),
              const Gap(50),
              const Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    "Change",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              SettingsTextField(
                controller: passcontroller,
                labeltext: "Password",
                readonly: true,
                ispassword: true,
              ),
              const Gap(50),
              const Text(
                "Notifications",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const Gap(20),
              const SwitchButton(text: "Sales", switchvalue: true),
              const SwitchButton(text: "New arrivals", switchvalue: false),
              const SwitchButton(
                  text: "Delivery status changes", switchvalue: false),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchButton extends StatelessWidget {
  final String text;
  final bool switchvalue;
  const SwitchButton(
      {super.key, required this.text, required this.switchvalue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CupertinoSwitch(
            value: switchvalue,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

class SettingsTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  final bool readonly;
  final bool ispassword;
  const SettingsTextField(
      {super.key,
      required this.controller,
      this.ispassword = false,
      required this.labeltext,
      required this.readonly});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          obscureText: ispassword,
          controller: controller,
          readOnly: readonly,
          style: const TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: labeltext,
            labelStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
