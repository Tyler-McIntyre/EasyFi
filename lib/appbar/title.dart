import 'package:flutter/material.dart';

Text getTitle(BuildContext context) {
  return Text.rich(
    TextSpan(
      style: const TextStyle(
        color: Colors.green,
        fontSize: 25,
      ),
      children: [
        TextSpan(
            text: 'Ea', style: Theme.of(context).primaryTextTheme.bodySmall),
        const TextSpan(
          text: '\$',
          style: TextStyle(color: Colors.orange),
        ),
        TextSpan(
            text: 'yFi', style: Theme.of(context).primaryTextTheme.bodySmall),
      ],
    ),
  );
}
