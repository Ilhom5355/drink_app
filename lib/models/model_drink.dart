import 'package:flutter/material.dart';

class ModelDrink {
  final String id;
  final int percentage;
  final String drinkName;
  final String description;
  final String image;
  final bool selectedPercent;
  final colorPercentBox;
  final dayTextColor;
  final String alcoholPercentage;
  final String fruitPercentage;
  final String waterPercentage;
  final int productPrice;

  ModelDrink({
    required this.id,
    required this.percentage,
    required this.drinkName,
    required this.description,
    required this.image,
    this.selectedPercent = false,
    required this.colorPercentBox,
    required this.dayTextColor,
    required this.alcoholPercentage,
    required this.fruitPercentage,
    required this.waterPercentage,
    required this.productPrice,
  });
}
