import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopCardWidget extends StatelessWidget {
  final String text;
  final String categoryurl;
  const ShopCardWidget({
    super.key,
    required this.text,
    required this.categoryurl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7.5),
      child: Container(
        height: 120,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)
              ),
              child: Image(
                width: 200,
                fit: BoxFit.cover,
                image: NetworkImage(categoryurl),
              ),
            )
          ],
        ),
      ),
    );
  }
}
