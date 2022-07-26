
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ShapeContainer extends StatelessWidget {
  const ShapeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 300),
      child: Container(
        height: 485,
        width: double.infinity,
        child: SvgPicture.asset(
          fit: BoxFit.cover,
          "assets/icons/shape1.svg",
          color: appBarButtonColor,
        ),
      ),
    );
  }
}