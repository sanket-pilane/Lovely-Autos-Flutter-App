import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lovely_autous/src/constants/image_strings.dart';
import 'package:lovely_autous/src/features/details/pages/detail_page.dart';
import 'package:lovely_autous/src/features/home/model/cars.dart';
import 'package:lovely_autous/src/features/home/widgets/cars_grid.dart';
import 'package:lovely_autous/src/features/home/widgets/categories_tile.dart';

import 'package:lovely_autous/src/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    void signOut() async {
      FirebaseAuthMethods(FirebaseAuth.instance).signOut();
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => signOut,
                        child: const CircleAvatar(
                            backgroundImage: AssetImage(kUserLogo)),
                      ),
                      const Column(
                        children: [
                          Text(
                            "Welcome🖐",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "Jack",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => signOut(),
                        icon: const Icon(
                          Icons.settings,
                          size: 30,
                        ),
                      ),
                    ],
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
                        prefixIcon: const Icon(
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
                  const CategoriesTile(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "All Cars",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  GridView.builder(
                    itemCount: cars.length,
                    shrinkWrap: true,
                    physics: const PageScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CarsGrid(
                        index: index,
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(car: cars[index]),
                        )),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
