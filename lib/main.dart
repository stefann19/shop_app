import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stefan\'s shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan).copyWith(secondary: Colors.deepOrange)
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
