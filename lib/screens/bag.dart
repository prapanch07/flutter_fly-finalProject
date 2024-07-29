import 'dart:math';

import 'package:e_commerce/screens/checkout.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:e_commerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

String totalamount = "124";

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
        Duration(
          seconds: 1,
        ), () {
      totalamount = "117";
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Bag",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const Gap(20),
              SizedBox(
                height: 375,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const Gap(20),
                  itemCount: bagurls.length,
                  itemBuilder: (context, index) => BagCardWidget(
                    color: bagurlcolor[index],
                    dresstype: dresstype[index],
                    bagurl: bagurls[index],
                    size: size[index],
                    price: price[index],
                  ),
                ),
              ),
              const Gap(20),
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Enter your promo code ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total amount: ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$totalamount\$',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const Gap(30),
              InkWell(
                onTap: () => _navigateToCheckout(context),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: const Center(
                    child: Text(
                      'CHECK OUT',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToCheckout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CheckoutScreen(),
      ),
    );
  }
}

class BagCardWidget extends StatelessWidget {
  final String bagurl;
  final String dresstype;
  final String color;
  final String size;
  final String price;
  const BagCardWidget({
    super.key,
    required this.bagurl,
    required this.dresstype,
    required this.color,
    required this.size,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image(
                height: 110,
                width: 110,
                fit: BoxFit.fill,
                image: NetworkImage(bagurl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    dresstype,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      RichTextWidget(text: "Color", subtext: color),
                      const Gap(10),
                      RichTextWidget(text: "Size", subtext: size),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButtonWidget(
                          icon: Icons.remove,
                          function: () {},
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        IconButtonWidget(
                          icon: Icons.add,
                          function: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 600,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Divider(
                                          indent: 140,
                                          endIndent: 140,
                                          color: Colors.grey,
                                          thickness: 5,
                                          height: 40,
                                        ),
                                        const Gap(20),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: double.infinity,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  topRight: Radius.circular(40),
                                                  bottomRight:
                                                      Radius.circular(40),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Text(
                                                  'Enter your promo code ',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Gap(30),
                                        const Text(
                                          "Your Promo Codes",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        const Gap(30),
                                        SizedBox(
                                          height: 255,
                                          child: ListView.separated(
                                            itemCount: promocodes.length,
                                            separatorBuilder:
                                                (context, index) =>
                                                    const Gap(20),
                                            itemBuilder: (context, index) =>
                                                CustomOfferZone(
                                              image: offerurls[index],
                                              text: promonames[index],
                                              subtext: promocodes[index],
                                              days: daysleft[index],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 0,
                  ),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    right: 30,
                  ),
                  child: Text(
                    "$price\$",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomOfferZone extends StatelessWidget {
  final String image;
  final String text;
  final String subtext;
  final String days;
  const CustomOfferZone(
      {super.key,
      required this.image,
      required this.text,
      required this.subtext,
      required this.days});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image(
              height: 80,
              width: 70,
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                subtext,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "$days days remaining",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                InkWell(
                  onTap: () => {
                    totalamount = "117",
                    Navigator.pop(context),
                  },
                  child: Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 4,
                          color: Color.fromARGB(255, 161, 161, 161),
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  final String text;
  final String subtext;
  const RichTextWidget({super.key, required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$text: ",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          TextSpan(
            text: subtext,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  const IconButtonWidget(
      {super.key, required this.icon, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: CircleAvatar(
        radius: 17,
        backgroundColor: Colors.black12,
        child: Icon(icon),
      ),
    );
  }
}
