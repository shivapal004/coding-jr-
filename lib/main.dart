import 'package:coding_junior/details_page.dart';
import 'package:coding_junior/home_page.dart';
import 'package:coding_junior/payment_page.dart';
import 'package:coding_junior/root.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        // home: const DetailsPage(),
        // home: const HomePage(),
        // home: const PaymentPage(),
        home: const RootPage()
    );
  }
}



