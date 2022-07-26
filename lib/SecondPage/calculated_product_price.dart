import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class CalculatedProductPrice extends StatelessWidget {
  final int index;

  const CalculatedProductPrice({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDrink = Provider.of<ProviderDrink>(context);

    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding * 26,
        left: defaultPadding,
      ),
      height: 60,
      width: 300,
      child: Row(
        children: [
          Container(
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$${productDrink.model_drink[index].productPrice}",
                  style: GoogleFonts.lora(
                    color: buttonTextColor.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  "Price x Drink",
                  style: GoogleFonts.lora(
                    color: buttonTextColor.withOpacity(0.8),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: defaultPadding),
          Container(
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$${productDrink.model_drink[index].productPrice * productDrink.count}",
                  style: GoogleFonts.lora(
                    color: buttonTextColor.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  "Total Price",
                  style: GoogleFonts.lora(
                    color: buttonTextColor.withOpacity(0.8),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
