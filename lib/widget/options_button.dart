import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

import '../constant/colours.dart';
import '../constant/spacing.dart';

class OptionButton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const OptionButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(
              height: kSpacingHeight,
            ),
            Text(
              title!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
