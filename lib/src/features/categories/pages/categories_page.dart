// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/details/pages/detail_page.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';

class CategoriePage extends StatelessWidget {
  final String title;
  const CategoriePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CarsModal> filterCarsByCategory(String selectedCategory) {
      return cars.where((car) => car.category == selectedCategory).toList();
    }

    String selectedCategory = title;
    List<CarsModal> filteredCars = filterCarsByCategory(selectedCategory);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCars.length,
                itemBuilder: (context, index) {
                  final car = filteredCars[index];
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: car.color,
                      elevation: 10,
                      child: GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(car: car),
                        )),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    car.rating.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Image.asset(
                                car.imagePath!,
                                height: 180,
                              ),
                              const Divider(
                                color: Colors.black,
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    car.name!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "\$${car.price.toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.grey.shade900),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
