import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';

import '../constants/colors.dart';

class FabWidget extends StatelessWidget {
  final int page;
  const FabWidget({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<AppProvider>().setPage(page);
      },
      shape: const CircleBorder(),
      backgroundColor: KColors.basicColor(context),
      child: const Icon(Icons.arrow_right),
    );
  }
}
