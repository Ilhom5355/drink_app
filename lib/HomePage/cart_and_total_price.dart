import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class CartAndTotalPrice extends StatelessWidget {

  final int index;

  const CartAndTotalPrice({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drink = context.watch<ProviderDrink>();
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding/2),
      child: Container(
        height: defaultPadding * 6,
        width: defaultPadding * 4,
        decoration: BoxDecoration(
          color: appBarButtonColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Stack(
              children:  [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding / 2),
                    child: CircleAvatar(
                      backgroundColor: backgroundColor,
                      radius: 11,
                      child: Text(
                        drink.count.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 29,
                  bottom: 0,
                  left: 0,
                  right: 4,
                  child: Icon(
                    CupertinoIcons.shopping_cart,
                    color: buttonTextColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: defaultPadding * 1.5),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        const Text(
                          "\$",
                          style: TextStyle(
                              color: buttonTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(
                            width: defaultPadding / 4),
                        Text(
                          "\$${(drink.model_drink[index].productPrice * drink.count)}",
                          style: const TextStyle(
                              color: buttonTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding / 5),
                  Text("Total Price", style: GoogleFonts.lora(fontSize: 12),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}