import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'percentage_container.dart';
import '../constants.dart';
import '../providers/provider_drink.dart';

class DrinkNameContainer extends StatelessWidget {
  const DrinkNameContainer({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final productDrink = Provider.of<ProviderDrink>(context);
    return Container(
      margin: const EdgeInsets.only(top: 380, left: 20),
      height: 200,
      width: 220,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productDrink.model_drink[index].drinkName,
            style: GoogleFonts.lora(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            productDrink.model_drink[index].description,
            style: GoogleFonts.lora(fontSize: 15),
          ),
          const SizedBox(height: defaultPadding / 2),
          PercentageContainer(index: index),
        ],
      ),
    );
  }
}


