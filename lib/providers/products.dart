
import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  addProduct(Product value){
    _items.add(value);
    notifyListeners();
  }

  void removeProduct(Product value){
    _items.remove(value);
    notifyListeners();
  }
}