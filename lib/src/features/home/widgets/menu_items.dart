import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.deepPurple,
          child: const Icon(Icons.exit_to_app_sharp),
        ),
        Container(
          height: 50,
          color: Colors.deepPurple.shade400,
          child: const Icon(Icons.notifications),
        )
      ],
    );
  }
}
