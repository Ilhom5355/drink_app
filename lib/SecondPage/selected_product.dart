import 'package:drink_app/SecondPage/shape_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/provider_drink.dart';
import 'drink_name_container.dart';
import 'add_remove_buttons.dart';
import 'calculated_product_price.dart';
import 'pay_container.dart';
import 'top_back_button.dart';
import 'total_order.dart';

class SelectedProduct extends StatelessWidget {
  final int index;

  const SelectedProduct({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final providerDrink = Provider.of<ProviderDrink>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  providerDrink.model_drink[index].image,
                ),
              ),
            ),
          ),
          const TopBackButton(),
          const ShapeContainer(),
          AddRemoveButtons(index: index),
          DrinkNameContainer(index: index),
          CalculatedProductPrice(index: index),
          const PayContainer(),
          TotalOrder(index: index),
        ],
      ),
    );
  }
}






