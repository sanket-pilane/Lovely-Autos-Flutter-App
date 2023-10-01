import 'package:flutter/material.dart';

class SpecificationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String desc;
  const SpecificationCard(
      {super.key, required this.title, required this.icon, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(16)),
      height: 160,
      width: 110,
      margin: const EdgeInsets.only(left: 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  icon,
                  size: 30,
                ),
              ),
              Text(
                title,
                maxLines: 2,
                style: const TextStyle(
                  height: 1,
                  fontSize: 18,
                ),
              ),
              Text(
                desc,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ]),
      ),
    );
  }
}
