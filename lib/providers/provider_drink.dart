import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/model_drink.dart';

class ProviderDrink with ChangeNotifier {
  List<ModelDrink> model_drink = [
    ModelDrink(
      id: "A1",
      percentage: 30,
      drinkName: "Blackberry",
      description: "Fresh Drink",
      image:
          "assets/images/melissa-walker-horn-yqnFLSes5Yk-unsplash-scaled.jpg",
      selectedPercent: true,
      colorPercentBox: backgroundColor,
      dayTextColor: smallTextColor,
      alcoholPercentage: "20%",
      fruitPercentage: "10%",
      waterPercentage: "70%",
      productPrice: 12,
    ),
    ModelDrink(
      id: "A2",
      percentage: 20,
      drinkName: "Menta Coctail",
      description: "Fresh Drink",
      image: "assets/images/bkbpbd27lux5cfrjj10tsuwyxbufnwwa.jpg",
      selectedPercent: true,
      colorPercentBox: percentBoxColor2.withOpacity(0.8),
      dayTextColor: buttonTextColor,
      alcoholPercentage: "15%",
      fruitPercentage: "25%",
      waterPercentage: "60%",
      productPrice: 8,
    ),
    ModelDrink(
      id: "A3",
      percentage: 0,
      drinkName: "Drinks Highball Glas",
      description: "Fresh Drink",
      image: "assets/images/Drinks_Highball_glas.jpg",
      selectedPercent: false,
      colorPercentBox: percentBoxColor3.withOpacity(0.8),
      dayTextColor: buttonTextColor,
      alcoholPercentage: "10%",
      fruitPercentage: "30%",
      waterPercentage: "60%",
      productPrice: 10,
    ),
    ModelDrink(
      id: "A4",
      percentage: 15,
      drinkName: "Cafe & IceCream",
      description: "Frozen Drink",
      image: "assets/images/ed976a04393aec019a9dd4f2c6328bca.jpg",
      selectedPercent: true,
      colorPercentBox: percentBoxColor4.withOpacity(0.8),
      dayTextColor: buttonTextColor,
      alcoholPercentage: "0%",
      fruitPercentage: "40%",
      waterPercentage: "60%",
      productPrice: 15,
    ),
  ];


  int count = 0;

  void incrementProduct() {
    count++;
    notifyListeners();
  }

  void decrementProduct() {
    if (count == 0) {
      return null;
    }
    count--;
    notifyListeners();
  }

}
