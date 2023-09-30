import 'package:flutter/material.dart';

class BottomeLine extends StatelessWidget {
  final String firstText;
  final String secondText;
  final void Function()? onTap;
  const BottomeLine(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              secondText,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
