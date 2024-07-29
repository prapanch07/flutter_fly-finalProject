import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: background,
          leading: IconButton(
                icon:const Icon(Icons.arrow_back_ios_new),
                onPressed: () => Navigator.pop(context),
              ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 0, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Orders",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: const Center(
                          child: Text(
                            "Delivered",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: background,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: const Center(
                          child: Text(
                            "Processing",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: background,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: const Center(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 800,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) => const DeliverdContainer(
                      orderno: "1947034",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeliveredTabbarView extends StatelessWidget {
  const DeliveredTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [],
    );
  }
}

class DeliverdContainer extends StatelessWidget {
  final String orderno;

  const DeliverdContainer({
    super.key,
    required this.orderno,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Container(
        height: 190,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Row(
                children: [
                  Text(
                    "Order No: $orderno",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "05-12-2019",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const Gap(15),
              const RichTextWidget(
                text: "Tracking Number: ",
                subtext: "IW3475453455",
              ),
              const Gap(5),
              const Row(
                children: [
                  RichTextWidget(text: "Quantity: ", subtext: "3"),
                  Spacer(),
                  RichTextWidget(text: "Total Amount:  ", subtext: "112\$")
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(),
                    ),
                    child: const Center(
                      child: Text(
                        "Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Delivered",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              )
            ],
          ),
        ),
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
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: const TextStyle(color: Colors.grey),
          ),
          TextSpan(text: subtext)
        ],
      ),
    );
  }
}

class ProcessingTabbarView extends StatelessWidget {
  const ProcessingTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CancelledTabbarView extends StatelessWidget {
  const CancelledTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
