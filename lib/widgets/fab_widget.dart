import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../data/notifiers.dart';


class FabWidget extends StatelessWidget {
  final int page;
  const FabWidget({super.key, required this.page});


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        selectedPageNotifier.value = page;
      },
      shape: const CircleBorder(),
      backgroundColor: KColors.basicColor(context),
      child: const Icon(Icons.arrow_right),
    );
  }
}
