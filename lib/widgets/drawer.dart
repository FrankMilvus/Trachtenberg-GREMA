import 'package:flutter/material.dart';

import '../data/notifiers.dart';



class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header"),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                selectedPageNotifier.value = 0;
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.five_g),
              title: const Text("Home"),
              onTap: () {
                selectedPageNotifier.value = 1;
                Navigator.pop(context);
              },
            )

          ]
      ),
    );
  }
}
