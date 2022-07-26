import 'package:drink_app/providers/provider_drink.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_drink_name.dart';
import 'product_image.dart';
import 'today_percentage_text.dart';

class AllProductList extends StatelessWidget {
  const AllProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerDrink = Provider.of<ProviderDrink>(context);


    return Expanded(
      flex: 6,
      child: PageView.builder(
        itemCount: providerDrink.model_drink.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                ProductImage(index: index),
                TodayPercentageText(index: index),
                BottomDrinkName(index: index),
              ],
            ),
          );
        },
      ),
    );
  }
}






