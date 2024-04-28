import 'dart:js';

import 'package:ecommerce_app/Pages/cart_page.dart';
import 'package:ecommerce_app/Pages/intropage.dart';
import 'package:ecommerce_app/Pages/setting_page.dart';
import 'package:ecommerce_app/Pages/shop_pages.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:ecommerce_app/themes/light_mode.dart';
import 'package:ecommerce_app/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
    ChangeNotifierProvider(
      create: (context) => Shop(),
    )
  ]));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPages(),
      theme: Provider.of(context),
      routes: {
        '/intropage': (context) => const IntroPages(),
        '/shop_pages': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/setting_page': (context) => const MySetting(),
      },
    );
  }
}
