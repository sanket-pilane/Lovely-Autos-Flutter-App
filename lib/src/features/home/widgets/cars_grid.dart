import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';

class CarsGrid extends StatelessWidget {
  final Function()? onTap;
  final int index;
  const CarsGrid({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 200,
          decoration: BoxDecoration(
              color: cars[index].color,
              borderRadius: BorderRadius.circular(14)),
          child: Column(
            children: [
              Image.asset(
                cars[index].imagePath!,
                height: 80,
              ),
              const SizedBox(
                height: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cars[index].name!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${cars[index].price!}",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text(cars[index].rating!)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
