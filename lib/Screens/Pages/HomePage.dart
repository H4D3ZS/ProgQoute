import 'package:flutter/material.dart';
import 'package:progqou/Services/API/http.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: (() => QouteR()),
                child: Text("Click Me To See Response"),
              ),
            ),
            // Text(API().fetchData().li),
          ]),
    );
  }
}
