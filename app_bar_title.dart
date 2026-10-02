import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/logo.png',
          height: 20,
        ),
        const SizedBox(width: 8),
        const Text(
          'Gerenciador de notas',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 18,
          ),
        ),
        const Text(
          ' ADS',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
