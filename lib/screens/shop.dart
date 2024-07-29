import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:e_commerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Women"),
              Tab(text: "Men"),
              Tab(text: "Kids"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            WomenTabbarView(),
            MenTabbarView(),
            KidsTabbarView(),
          ],
        ),
      ),
    );
  }
}

class WomenTabbarView extends StatelessWidget {
  const WomenTabbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SUMMER SALES',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Upto 50% off",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(7.5),
              SizedBox(
                height: 120 * 4 + 70,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: womencategories.length,
                  itemBuilder: (context, index) => ShopCardWidget(
                    text: womencategories[index],
                    categoryurl: womencategorieurl[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenTabbarView extends StatelessWidget {
  const MenTabbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mens Section'),
      ),
    );
  }
}

class KidsTabbarView extends StatelessWidget {
  const KidsTabbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Kids Section'),
      ),
    );
  }
}
