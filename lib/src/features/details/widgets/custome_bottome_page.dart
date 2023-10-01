import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/details/widgets/specification_card.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';

class CustomeBottomShit extends StatelessWidget {
  final CarsModal car;
  const CustomeBottomShit({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    car.name!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 30,
                      ),
                      Text(
                        car.rating!,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                "The 4 Series is available in various body styles, including a coupe, a convertible, and a Gran Coupe (a four-door coupe-style sedan).",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Features",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SpecificationCard(
                      title: "Total\nCapacity",
                      icon: Icons.chair,
                      desc: "2 Seats"),
                  SpecificationCard(
                      title: "Highest\nSpeed",
                      icon: Icons.speed,
                      desc: "200km/H"),
                  SpecificationCard(
                      title: "Engine\nOutput",
                      icon: Icons.power,
                      desc: "500 HP")
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "\$${car.price}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black87),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20))),
                      onPressed: () {},
                      child: const Text("Buy Now"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
