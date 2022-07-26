import 'package:flutter/material.dart';

import '../constants.dart';
import 'bottom_nav_bar_menu.dart';
import 'all_product_list.dart';
import 'top_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: const TopText(),
            ),
            const AllProductList(),
            BottomNavBarMenu(),
          ],
        ),
      ),
    );
  }
}
