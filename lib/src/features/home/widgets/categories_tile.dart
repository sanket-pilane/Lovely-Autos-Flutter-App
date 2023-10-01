import 'package:flutter/material.dart';
import 'package:lovely_autous/src/features/home/model/categories.dart';

class CategoriesTile extends StatefulWidget {
  const CategoriesTile({super.key});

  @override
  State<CategoriesTile> createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0).copyWith(left: 0),
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87,
                    ),
                    child: Image.asset(
                      categories[index].logoPath!,
                      height: 40,
                    ),
                  ),
                ),
                Text(
                  categories[index].name!,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
