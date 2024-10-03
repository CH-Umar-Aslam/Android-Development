import 'package:flutter/material.dart';
import '../models/product.dart';
import 'view-product.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // list of products
  final List<Product> products = [
    Product(
      name: 'Sonic Bliss Earbuds',
      image: 'assets/img.png',
      price: 800,
      description: 'Experience rich sound in a compact design with seamless Bluetooth connectivity.',
    ),
    Product(
      name: 'Aural Harmony Over-Ears:',
      image: 'assets/img_1.png',
      price: 400,
      description: 'Enjoy immersive audio and plush cushioning for maximum comfort during long listening sessions.',
    ),
    Product(
      name: 'BassBoost Wireless Headphones',
      image: 'assets/img_2.png',
      price: 350,
      description: 'Unleash powerful bass with advanced noise-canceling technology for an unparalleled audio experience. '),
    Product(
      name: 'Traveler’s Choice Headphones',
      image: 'assets/img_3.png',
      price: 560,
      description: 'Foldable and lightweight, these headphones are perfect for music on the go, delivering crystal-clear sound wherever you are.',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: const Color.fromARGB(255, 197, 179, 212),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product product = products[index];
              return Card(
  elevation: 4.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(3),
  ),
  margin: EdgeInsets.all(8),
  child: ListTile(
    contentPadding: EdgeInsets.all(16.0),
    leading: ClipOval(
      child: Image.asset(
        product.image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    ),
    title: Text(
      product.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    subtitle: Text(
      '\$${product.price}',
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 16,
      ),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ViewProduct(product: product),
        ),
      );
    },
  ),
);

            },
          ),
        ),
      ),
    );
  }
}
