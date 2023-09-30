import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';

class CategoriesPage extends StatelessWidget {
  final String type;
  const CategoriesPage({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    List<CarsModal> filteredList = cars;

    filteredList = cars.where((element) => element.category == type).toList();

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(child: Text(type)));
  }
}
