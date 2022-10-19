import 'package:flutter/material.dart';
import 'package:BlogTemplate/pages/home/home.dart';
import 'package:BlogTemplate/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LFI Male-Alpha',
      theme: ThemeData(primaryColor: darkGrey),
      home: const Home(),
    );
  }
}
