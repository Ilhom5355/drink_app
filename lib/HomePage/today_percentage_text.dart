import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class TodayPercentageText extends StatelessWidget {

  final int index;

  const TodayPercentageText({
    Key? key, required this.index,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final providerDrink = Provider.of<ProviderDrink>(context);
    final drink = context.watch<ProviderDrink>();
    return Positioned(
      top: defaultPadding * 2.2,
      left: defaultPadding * 2.5,
      child: drink.model_drink[index].selectedPercent
          ? Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: providerDrink
              .model_drink[index].colorPercentBox,
          borderRadius: BorderRadius.circular(
            defaultPadding / 2 * 1.5,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(
            top: defaultPadding / 2,
            left: defaultPadding / 1.5,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    providerDrink
                        .model_drink[index].percentage
                        .toString(),
                    style: GoogleFonts.lora(
                      fontSize: 20,
                      color: buttonTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "%",
                        style: GoogleFonts.lato(
                          fontSize: 13,
                          color: buttonTextColor
                              .withOpacity(0.8),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: GoogleFonts.lora(
                      fontSize: 12,
                      color: providerDrink
                          .model_drink[index].dayTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
          : Container(),
    );
  }
}