import 'package:lovely_autous/src/constants/image_strings.dart';

class Categories {
  String? logoPath;
  String? name;
  Categories({
    required this.logoPath,
    required this.name,
  });
}

List<Categories> categories = [
  Categories(logoPath: kBmwLogo, name: "Bmw"),
  Categories(logoPath: kJaugarLogo, name: "Jaquar"),
  Categories(logoPath: kRollsLogo, name: "Rolls Royce"),
  Categories(logoPath: kToyotaLogo, name: "Toyota"),
  Categories(logoPath: kFerrariLogo, name: "Ferrari"),
  Categories(logoPath: kMercedesLogo, name: "Mercedes"),
];
