import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/screens/orders.dart';
import 'package:e_commerce/screens/settings.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.abc,
          color: background,
        ),
        backgroundColor: background,
        actions: const [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Gap(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(profiledp),
                  ),
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        useremail,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Gap(45),
              SizedBox(
                height: 500,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const Gap(30),
                  itemCount: profiletitles.length,
                  itemBuilder: (context, index) => ProfileCustomTile(
                    title: profiletitles[index],
                    subtitle: profilesubtitles[index],
                    function: () => {
                      if (profiletitles[index] == "Settings")
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingPage(),
                            ),
                          )
                        }
                      else if (profiletitles[index] == "My Orders")
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderScreen(),
                            ),
                          )
                        }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCustomTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback function;
  const ProfileCustomTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 17,
                  letterSpacing: .5,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
