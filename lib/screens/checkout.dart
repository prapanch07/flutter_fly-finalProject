import 'package:e_commerce/screens/success.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context)
          },
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shipping address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Gap(10),
              Container(
                height: 130,
                color: background,
                child: const Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Jane Doe",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            Spacer(),
                            Text(
                              "Change",
                              style: TextStyle(
                                  color: red, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Gap(10),
                        Text(
                          "3 Newbridge Cour",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Chino Hills,CA 91709,US",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, right: 25),
                child: Row(
                  children: [
                    Text(
                      "Payment",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "Change",
                      style: TextStyle(
                        color: red,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Image(
                      image: NetworkImage(mastercardimg),
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    "**** **** **** 3947",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Gap(40),
              const Text(
                "Delivery Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeliveryMethodCardWidget(imgurl: fedeximg),
                  DeliveryMethodCardWidget(imgurl: upsimg),
                  DeliveryMethodCardWidget(imgurl: dhlimg),
                ],
              ),
              const Gap(40),
              const Row(
                children: [
                  Text(
                    "Order: ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "112\$ ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const Gap(10),
              const Row(
                children: [
                  Text(
                    "Delivery: ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "15\$ ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const Gap(10),
              const Row(
                children: [
                  Text(
                    "Summary: ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "127\$ ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const Gap(30),
              InkWell(
                onTap: () => _navigateToSuccess(context),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: const Center(
                    child: Text(
                      'SUBMIT ORDER',
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

  void _navigateToSuccess(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SuccessScreen(),
      ),
    );
  }
}

class DeliveryMethodCardWidget extends StatelessWidget {
  final String imgurl;
  const DeliveryMethodCardWidget({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 40,
            width: 60,
            fit: BoxFit.contain,
            image: NetworkImage(imgurl),
          ),
          const Text(
            "2-3 days",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
