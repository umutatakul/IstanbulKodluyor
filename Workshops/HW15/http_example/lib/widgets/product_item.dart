import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.price});
  final String imgUrl;
  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
      child: Column(
        children: [
          Title(
            color: Colors.black,
            child: Text(
              title,
              style: const TextStyle(fontSize: 28),
            ),
          ),
          Image.network(imgUrl),
          Text(
            "Fiyat $price",
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
