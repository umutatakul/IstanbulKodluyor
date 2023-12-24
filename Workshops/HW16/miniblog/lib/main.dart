import 'package:flutter/material.dart';
import 'package:miniblog/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Homepage(),
    ),
  );
}
