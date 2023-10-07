import 'package:flutter/material.dart';
import 'package:lovely_autous/src/constants/image_strings.dart';

class CarsModal {
  String? name;
  String? imagePath;
  String? category;
  String? price;
  String? rating;
  Color? color;

  CarsModal({
    required this.name,
    required this.imagePath,
    required this.category,
    required this.price,
    required this.rating,
    required this.color,
  });
}

List<CarsModal> cars = [
  CarsModal(
      name: "BMW 1",
      imagePath: kBmwImage4,
      category: "BMW",
      price: "80,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "BMW 2",
      imagePath: kBmwImage2,
      category: "BMW",
      price: "95,000",
      rating: "4.4",
      color: Colors.grey.shade200),
  CarsModal(
      name: "BMW 3",
      imagePath: kBmwImage3,
      category: "BMW",
      price: "102,000",
      rating: "4.6",
      color: Colors.red.shade300),
  CarsModal(
      name: "BMW 4",
      imagePath: kBmwImage1,
      category: "BMW",
      price: "70,000",
      rating: "4.8",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Ferrari 1",
      imagePath: kFerrariImage1,
      category: "Ferrari",
      price: "80,000",
      rating: "4.4",
      color: Colors.red.shade300),
  CarsModal(
      name: "Ferrari 2",
      imagePath: kFerrariImage2,
      category: "Ferrari",
      price: "95,000",
      rating: "4.4",
      color: Colors.red.shade200),
  CarsModal(
      name: "Ferrari 3",
      imagePath: kFerrariImage3,
      category: "Ferrari",
      price: "102,000",
      rating: "4.6",
      color: Colors.yellow.shade300),
  CarsModal(
      name: "Ferrari 4",
      imagePath: kFerrariImage4,
      category: "Ferrari",
      price: "70,000",
      rating: "4.8",
      color: Colors.yellow.shade300),
  CarsModal(
      name: "Jaguar 1",
      imagePath: kJaugarImage1,
      category: "Jaguar",
      price: "80,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Jaguar 2",
      imagePath: kJaugarImage2,
      category: "Jaguar",
      price: "95,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Jaguar 3",
      imagePath: kJaugarImage3,
      category: "Jaguar",
      price: "102,000",
      rating: "4.6",
      color: Colors.grey.shade600),
  CarsModal(
      name: "Jaguar 4",
      imagePath: kJaugarImage4,
      category: "Jaguar",
      price: "70,000",
      rating: "4.8",
      color: Colors.blue.shade300),
  CarsModal(
      name: "Mercedes 1",
      imagePath: kMercedesImage1,
      category: "Mercedes",
      price: "80,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Mercedes 2",
      imagePath: kMercedesImage2,
      category: "Mercedes",
      price: "95,000",
      rating: "4.4",
      color: Colors.red.shade300),
  CarsModal(
      name: "Mercedes 3",
      imagePath: kMercedesImage3,
      category: "Mercedes",
      price: "102,000",
      rating: "4.6",
      color: Colors.grey.shade600),
  CarsModal(
      name: "Mercedes 4",
      imagePath: kMercedesImage4,
      category: "Mercedes",
      price: "70,000",
      rating: "4.8",
      color: Colors.grey.shade400),
  CarsModal(
      name: "Rolls 1",
      imagePath: kRollsImage1,
      category: "Rolls Royce",
      price: "80,000",
      rating: "4.4",
      color: Colors.blue.shade300),
  CarsModal(
      name: "Rolls 2",
      imagePath: kRollsImage2,
      category: "Rolls Royce",
      price: "95,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Rolls 3",
      imagePath: kRollsImage3,
      category: "Rolls Royce",
      price: "102,000",
      rating: "4.6",
      color: Colors.blue.shade600),
  CarsModal(
      name: "Toyota 1",
      imagePath: kToyotaImage1,
      category: "Toyota",
      price: "80,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Toyota 2",
      imagePath: kToyotaImage2,
      category: "Toyota",
      price: "95,000",
      rating: "4.4",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Toyota 3",
      imagePath: kToyotaImage3,
      category: "Toyota",
      price: "102,000",
      rating: "4.6",
      color: Colors.grey.shade300),
  CarsModal(
      name: "Toyota 4",
      imagePath: kToyotaImage4,
      category: "Toyota",
      price: "70,000",
      rating: "4.8",
      color: Colors.grey.shade300),
];
