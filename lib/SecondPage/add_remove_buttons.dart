import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../models/model_drink.dart';
import '../providers/provider_drink.dart';

class AddRemoveButtons extends StatelessWidget {
  final int index;

  const AddRemoveButtons({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDrink = Provider.of<ProviderDrink>(context);

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: defaultPadding * 5,
          right: defaultPadding * 1.8,
        ),
        height: 140,
        width: 85,
        decoration: BoxDecoration(
          color: bottomButtonColor,
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                productDrink.incrementProduct();
              },
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white.withOpacity(0.7),
                  size: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: smallTextColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                productDrink.count.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                productDrink.decrementProduct();
              },
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.remove,
                  color: Colors.white.withOpacity(0.7),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
