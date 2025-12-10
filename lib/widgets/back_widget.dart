import 'package:flutter/material.dart';

import '../data/notifiers.dart';

class BackWidget extends StatelessWidget {
  final int page;
  const BackWidget({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        selectedPageNotifier.value = page;
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
