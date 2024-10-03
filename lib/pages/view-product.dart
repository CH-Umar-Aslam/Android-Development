import 'package:flutter/material.dart';
import '../models/product.dart'; 

class ViewProduct extends StatelessWidget {
  final Product product;

  const ViewProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color.fromARGB(255, 200, 171, 207)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display product image
            Image.asset(product.image),
            SizedBox(height: 16),
            // Display product name
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Display product description
            Text(
              product.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Display product price
            Text(
              ' ${product.price}\$',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
// git commit -m "In this code I have developed two screens as a student of Mobile app development  I learned how to use pub packeges do routing in flutter app also I learned how to make componets to make code reusable.