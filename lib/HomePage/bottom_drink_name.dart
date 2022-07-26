import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class BottomDrinkName extends StatelessWidget {

  final int index;

  const BottomDrinkName({
    Key? key, required this.index,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final providerDrink = Provider.of<ProviderDrink>(context);
    return Positioned(
      top: 350,
      left: 50,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                providerDrink.model_drink[index].drinkName,
                style: GoogleFonts.lora(
                    fontSize: 28,
                    color: buttonTextColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                providerDrink.model_drink[index].description,
                style: GoogleFonts.lora(
                    fontSize: 16,
                    color: buttonTextColor.withOpacity(0.7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}