import 'package:e_commerce/screens/shop.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: NetworkImage(successimg),
                  fit: BoxFit.fill,
                ),
                const Gap(20),

                const Text(
                  "Success!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const Gap(20),

                const Text(
                  "Your order will be delivered soon.\nThank you for choosing our app!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(100),
                InkWell(
                  onTap: () => _navigatePOP(context),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: const Center(
                      child: Text( 
                        'CONTINUE SHOPPING',
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
      ),
    );
  }


  _navigatePOP(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context) => ShopScreen(),));
  }
}
