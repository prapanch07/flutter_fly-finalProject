import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavoritesScreen'),
      ),
      body: Center(
        child: Text('FavoritesScreen'),
      ),
    );
  }
}
