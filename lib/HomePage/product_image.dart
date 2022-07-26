import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../SecondPage/selected_product.dart';
import '../constants.dart';
import '../providers/provider_drink.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final providerDrink = Provider.of<ProviderDrink>(context);
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding, right: 20, left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SelectedProduct(index: index),
            ),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.52,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                providerDrink.model_drink[index].image,
              ),
            ),
            borderRadius: BorderRadius.circular(30),
          ),

        ),
      ),
    );
  }
}
