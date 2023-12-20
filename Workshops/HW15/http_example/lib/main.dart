import 'package:flutter/material.dart';
import 'package:http_example/screens/product_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Shop App"),
      ),
      body: const ProductScreen(),
    ),
  ));
}
