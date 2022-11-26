import 'package:flutter/material.dart';
import 'package:progqou/Screens/HomePage.dart';
import 'package:progqou/Screens/SecondScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE + PHONE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      routes: {
        '/': (context) => const Scaffold(body: HomePage()),
        // '/second': (context) => const Scaffold(body: SecondPage()),
      },
    );
  }
}
