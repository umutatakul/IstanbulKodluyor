import 'package:flutter/material.dart';

class Category {
  //opsiyonel constructor parametreleri
  //Kulalnıcı parametre verirse cerdiği color'u
  //vermes ise varsayılan değeri (orange) kullanır
  const Category({
    required this.id,
    required this.name,
    this.color = Colors.orange,
  });
  final String id;
  final String name;
  final Color color;
}
