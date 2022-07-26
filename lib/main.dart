import 'package:drink_app/constants.dart';
import 'package:drink_app/providers/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'HomePage/home_page.dart';
import 'providers/provider_drink.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderBottomMenu()),
        ChangeNotifierProvider(create: (context) => ProviderDrink()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,

        darkTheme: ThemeData.light(),
        title: 'Drink App',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: smallTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomePage(),
      ),
    );
  }
}


