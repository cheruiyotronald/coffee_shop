import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black', 
      price: '4.10', 
      imagePath: "lib/images/black.jpg"
    ),
    Coffee(
      name: 'Latte', 
      price: '4.20', 
      imagePath: "lib/images/latte.jpg"
    ),
    Coffee(
      name: 'Espresso', 
      price: '3.50', 
      imagePath: "lib/images/espresso.jpg"
    ),
    Coffee(
      name: 'Iced Black', 
      price: '4.40', 
      imagePath: "lib/images/iced.jpg"
    )
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}