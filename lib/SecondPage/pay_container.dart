import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class PayContainer extends StatelessWidget {
  const PayContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 615,
      left: 300,
      child: Container(
        height: 140,
        width: 85,
        decoration: BoxDecoration(
          color: bottomButtonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 35,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultPadding / 2),
                color: Colors.black,
                image: const DecorationImage(
                  image: AssetImage("assets/images/MasterCard.png"),
                ),
              ),
            ),
            Text(
              "MasterCard",
              style: GoogleFonts.lora(
                  fontSize: 11, color: buttonTextColor.withOpacity(0.7)),
            ),
            Text(
              "PAY",
              style: GoogleFonts.lora(
                  fontSize: 20,
                  color: buttonTextColor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}