import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class PercentageContainer extends StatelessWidget {

  const PercentageContainer({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final productDrink = Provider.of<ProviderDrink>(context);
    return Container(
      height: 100,
      width: 300,
      //color: Colors.blue,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 58,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red,
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productDrink.model_drink[index].alcoholPercentage,
                      style: GoogleFonts.lora(
                          fontSize: 16, color: buttonTextColor),
                    ),
                    Text(
                      "Alhocol",
                      style: GoogleFonts.lora(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Container(
                height: 58,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red,
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productDrink.model_drink[index].fruitPercentage,
                      style: GoogleFonts.lora(
                          fontSize: 16, color: buttonTextColor),
                    ),
                    Text(
                      "Fruit",
                      style: GoogleFonts.lora(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Container(
                height: 58,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red,
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productDrink.model_drink[index].waterPercentage,
                      style: GoogleFonts.lora(
                          fontSize: 16, color: buttonTextColor),
                    ),
                    Text(
                      "Water",
                      style: GoogleFonts.lora(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}