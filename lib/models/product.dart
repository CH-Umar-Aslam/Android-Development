import 'package:flutter/material.dart';
class Product {
   String image, name, description;
   int price ;
  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });
}