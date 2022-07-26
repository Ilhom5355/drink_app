import 'package:drink_app/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';


class BottomNavBarMenu extends StatefulWidget {
  @override
  State<BottomNavBarMenu> createState() => _BottomNavBarMenuState();
}

class _BottomNavBarMenuState extends State<BottomNavBarMenu> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final menuPro = Provider.of<ProviderBottomMenu>(context);
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            menuPro.menuItems.length,
            (index) => GestureDetector(
              onTap: () {
                setState(
                  () {
                    _index = index;
                  },
                );
              },
              child: Container(
                height: 48,
                width: 110,
                decoration: BoxDecoration(
                  color:
                      _index == index ? bottomButtonColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(defaultPadding * 1.5),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: defaultPadding / 2),
                    SvgPicture.asset(
                      menuPro.menuItems[index].menuIcon,
                      height: 22,
                      color: _index == index
                          ? buttonTextColor.withOpacity(0.7)
                          : Colors.transparent,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    _index == index ? Container(
                      child: Text(
                        menuPro.menuItems[index].menuName,
                        style: GoogleFonts.lora(
                          color: _index == index
                              ? buttonTextColor.withOpacity(0.8)
                              : Colors.transparent,
                          fontSize: _index == index ? 15 : 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ): SvgPicture.asset(
                      menuPro.menuItems[index].menuIcon,
                      height: 22,
                      color: _index == index
                          ? buttonTextColor.withOpacity(0.7)
                          : buttonTextColor.withOpacity(0.3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
