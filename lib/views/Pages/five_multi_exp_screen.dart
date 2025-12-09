import 'package:flutter/material.dart';


class FiveMultiExpScreen extends StatelessWidget {
  const FiveMultiExpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('Five Multiples'), centerTitle: true,
    ),
        body: Center(
          child: ElevatedButton(
            child: Text("Go to Second Screen"),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        )    );
  }
}

