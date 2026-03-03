import 'package:flutter/material.dart';
import 'package:mazi_jaga/screens/loginpagescreens.dart';
import 'package:mazi_jaga/screens/logoshowscreen.dart';


void main() {
  runApp(const MazijagaApp());
}

class MazijagaApp extends StatelessWidget {
  const MazijagaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mazijaga',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF4B400), // Golden theme
          brightness: Brightness.dark,
        ),
        fontFamily: 'Poppins',
      ),
      home:  LoginPage(),
    );
  }
}