import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const ScreenLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SpacingUtils.space300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: SpacingUtils.space300,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
