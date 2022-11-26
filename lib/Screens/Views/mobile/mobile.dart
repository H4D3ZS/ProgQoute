import 'package:flutter/material.dart';
import 'package:progqou/Screens/Pages/HomePage.dart';

class MobileMain extends StatelessWidget {
  const MobileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programmer Qoute Bloc",
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      body: HomePage(),
    );
  }
}
