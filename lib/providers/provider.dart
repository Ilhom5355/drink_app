import 'package:flutter/material.dart';
import '../models/model_bottom_menu.dart';

class ProviderBottomMenu with ChangeNotifier{
  final List<ModelBottomMenu> menuItems = [
    ModelBottomMenu(menuName: "Home", menuIcon: "assets/icons/home2.svg"),
    ModelBottomMenu(menuName: "User", menuIcon: "assets/icons/person2.svg"),
    ModelBottomMenu(menuName: "Search", menuIcon: "assets/icons/search2.svg"),
  ];

}

final List<String> menu = [
  "Promotion",
  "Free Drink",
  "Happy Hour",
];
