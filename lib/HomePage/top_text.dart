import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';
import 'cart_and_total_price.dart';
import 'menu.dart';

class TopText extends StatelessWidget {



   const TopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drink = context.watch<ProviderDrink>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: defaultPadding * 2.5,
                  ),
                  Text(
                    "Tonight",
                    style:
                        GoogleFonts.lora(fontSize: 35, color: buttonTextColor),
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  const Text("Monday, November 25"),
                ],
              ),
               const CartAndTotalPrice(index: 0),
            ],
          ),
        ),
        Menu(),

      ],
    );
  }
}


