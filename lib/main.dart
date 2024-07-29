import 'package:e_commerce/db_functions.dart';
import 'package:e_commerce/screens/bag.dart';
import 'package:e_commerce/screens/checkout.dart';
import 'package:e_commerce/screens/first_screen.dart';
import 'package:e_commerce/screens/home.dart';
import 'package:e_commerce/screens/orders.dart';
import 'package:e_commerce/screens/profile.dart';
import 'package:e_commerce/screens/settings.dart';
import 'package:e_commerce/screens/shop.dart';
import 'package:e_commerce/screens/signup.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialisedb();
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //̦
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: background,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white)
      ),
      home: const SignUpScreen (),
    );
  } 
}
 