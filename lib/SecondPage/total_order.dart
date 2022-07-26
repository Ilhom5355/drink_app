import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/provider_drink.dart';

class TotalOrder extends StatelessWidget {

  final int index;

  const TotalOrder({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDrink = Provider.of<ProviderDrink>(context);

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.only(left: defaultPadding * 2),
        height: 150,
        width: 160,
        //color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 120,
              //color: Colors.blue,
              child: Text(
                "Total Order",
                style: GoogleFonts.lora(fontSize: 20),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Container(
              height: 55,
              width: 200,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/cup-cup-svgrepo-com.svg",
                            height: 34,
                            width: 100,
                            color: buttonTextColor.withOpacity(0.7),
                          ),
                          Positioned(
                            left: 14,
                            bottom: 15,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor:
                              appBarButtonColor.withOpacity(0.9),
                              child: Text(
                                productDrink.count.toString(),
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding / 4),
                      Text(
                        "Total Drinks",
                        style: GoogleFonts.lora(
                          fontSize: 11,
                          color: buttonTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${productDrink.model_drink[index].productPrice * productDrink.count}",
                        style: GoogleFonts.lora(
                            fontSize: 25,
                            color: buttonTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      //const SizedBox(height: defaultPadding / 4),
                      Text(
                        "Total Drinks",
                        style: GoogleFonts.lora(
                          fontSize: 11,
                          color: buttonTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}