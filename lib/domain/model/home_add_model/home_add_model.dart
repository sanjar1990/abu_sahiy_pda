import 'package:flutter/cupertino.dart';

class HomeAddModel {
  final String title;
  final String description;
  final String? backgroundImage;
  final Widget? mainImage;
  final VoidCallback func;

  HomeAddModel(
      {required this.title,
      required this.description,
      this.backgroundImage,
      this.mainImage,
      required this.func});
}
