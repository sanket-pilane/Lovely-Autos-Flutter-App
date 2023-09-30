import 'package:flutter/material.dart';
import 'package:lovely_autous/src/constants/image_strings.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';
import 'package:lovely_autous/src/features/home/widgets/cars_grid.dart';
import 'package:lovely_autous/src/features/home/widgets/categories_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset(
                  kFaceboolLogo,
                  height: 40,
                ),
                title: Text(
                  "Welcome🖐",
                  style: TextStyle(fontSize: 12),
                ),
                subtitle: Text(
                  "Tony Stark",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                trailing: Icon(
                  Icons.notifications_active,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                    hintText: "Search your car",
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              CategoriesTile(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Popular Cars",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Expanded(
                  child: GridView.builder(
                itemCount: cars.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CarsGrid(
                    index: index,
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
