import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../providers/provider.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          top: defaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menu.length,
              (index) => GestureDetector(
            onTap: () {
              setState(() {
                _index = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 2,
                  color: index == _index
                      ? buttonTextColor.withOpacity(0.2)
                      : Colors.transparent,
                ),
              ),
              child: Text(
                menu[index],
                style: GoogleFonts.lato(
                    color: index == _index
                        ? buttonTextColor
                        : buttonTextColor.withOpacity(0.5),
                    fontWeight: FontWeight.bold, fontSize: 16
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}