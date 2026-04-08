import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';

class BackWidget extends StatelessWidget {
  final int page;
  const BackWidget({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<AppProvider>().setPage(page);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
