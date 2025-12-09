import 'package:flutter/material.dart';


class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Screen"), centerTitle: true,),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Screen"),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

