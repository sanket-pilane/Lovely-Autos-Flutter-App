import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/details/widgets/custome_bottome_page.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';
import 'package:lovely_autous/src/features/home/widgets/menu_items.dart';
import 'package:popover/popover.dart';

class DetailPage extends StatelessWidget {
  final CarsModal car;
  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: car.color,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: IconButton(
                              onPressed: () => showPopover(
                                context: context,
                                bodyBuilder: (context) => const MenuItem(),
                                backgroundColor: Colors.white,
                                width: 200,
                                height: 400,
                                arrowHeight: 15,
                                arrowWidth: 30,
                              ),
                              icon: const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    car.imagePath!,
                    height: 250,
                  ),
                ],
              ),
            ),
            CustomeBottomShit(car: car),
          ],
        ),
      ),
    );
  }
}
