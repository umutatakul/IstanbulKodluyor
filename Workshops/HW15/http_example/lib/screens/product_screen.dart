import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_example/widgets/product_item.dart';
//http dedğimde gelsin. Pakete değişken gibi davrandım

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List productList = [];
  @override
  void initState() {
    //initState canvasa flutter yapacaklarımı önce bunları yap kısmıdır
    super
        .initState(); //Normal şartlarda olan init state yine çalışsın (super zaten super class)
    //extra olarak getProducts çalışsın()
    getProducts();
  }

  void getProducts() async {
    //asenkron olduğunu belirmem lazım fonskiyonun
    //http ile ile url deki ürünleri (products)  getirmek
    Uri url = Uri.https("dummyjson.com", "products");
    //her slash(/) için virügül(,) ile ayırıyoruz.

    final response =
        await http.get(url); //asenkron : bu satır bitmeden diğerine geçer
    //await dediğimde senkron olur bekle demiş olur

    final dataAsJson = json.decode(response.body);
    //alınan yanıtı bir json nesnesi olarak kullanabilmek için yaptık.

    setState(() {
      productList = dataAsJson["products"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (ctx, index) => ProductItem(
          imgUrl: productList[index]["thumbnail"],
          title: productList[index]["title"],
        ),
      ),
    );
  }
}
