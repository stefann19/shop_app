import 'package:flutter/widgets.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({required this.id, required this.title, required this.quantity, required this.price});
}

class Cart with ChangeNotifier{
  Map<String,CartItem> _items ={};

  Map<String,CartItem> get items { return {..._items};}

  void addItem(CartItem cartItem){
    if(_items.containsKey(cartItem.id)){
      _items.update(cartItem.id, (existingCartItem) => CartItem(id:cartItem.id,title: cartItem.title,quantity: existingCartItem.quantity+1,price: cartItem.price));
    }else {
      _items.putIfAbsent(cartItem.id, () => cartItem);
    }
  }
}