import 'package:flutter/material.dart';

import '../constants.dart';

class TopBackButton extends StatelessWidget {
  const TopBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding * 3,
      ),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: appBarButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: buttonTextColor.withOpacity(0.7),
          size: 20,
        ),
      ),
    );
  }
}