import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/details/widgets/custome_bottome_page.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';
import 'package:lovely_autous/src/utils/show_snackbar.dart';

class DetailPage extends StatefulWidget {
  final CarsModal car;
  const DetailPage({super.key, required this.car});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.car.color,
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
                              onPressed: () {
                                setState(() {
                                  isLiked = !isLiked;
                                });

                                if (isLiked) {
                                  showSnackBar(context, "Added to cart");
                                }
                              },
                              icon: Icon(
                                isLiked
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    widget.car.imagePath!,
                    height: 250,
                  ),
                ],
              ),
            ),
            CustomeBottomShit(car: widget.car),
          ],
        ),
      ),
    );
  }
}
