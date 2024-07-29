import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: NetworkImage(homeimg),
                ),
                const Positioned(
                  left: 20,
                  bottom: 100,
                  child: Text(
                    "Fashion\nsale",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(red),
                      minimumSize: WidgetStatePropertyAll(
                        Size(140, 35),
                      ),
                    ),
                    child: const Text(
                      "Check",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "You've never seen it before!",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: clothes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardWidget(
                    clotheid: clothes[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  final String clotheid;
  const CustomCardWidget({super.key, required this.clotheid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Card(
            child: Image(
              height: 250,
              image: NetworkImage(
                clotheid,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                child: Text(
                  'New',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
