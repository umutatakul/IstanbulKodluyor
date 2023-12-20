import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_example/models/product.dart';
import 'package:http_example/widgets/product_item.dart';
//http dedğimde gelsin. Pakete değişken gibi davrandım

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  // List productList = [];
  List<Product> productList = [];
  List<Product> productListByModel = [];
  @override
  void initState() {
    //initState canvasa flutter yapacaklarımı önce bunları yap kısmıdır
    super
        .initState(); //Normal şartlarda olan init state yine çalışsın (super zaten super class)
    //extra olarak getProducts çalışsın()
    getProducts();
  }

  void getProducts() async {
    //asenkron olduğunu belirtmem lazım fonskiyonun
    //http ile ile url deki ürünleri (products)  getirmek
    Uri url = Uri.https("dummyjson.com", "products");
    //her slash(/) için virgül(,) ile ayırıyoruz.

    final response = await http.get(
      url,
    );
    print(response);
    //asenkron : bu satır bitmeden diğerine geçer
    //await dediğimde senkron olur bekle demiş olurum

    final dataAsJson = json.decode(response.body);
    //alınan yanıtın bodysini bir json nesnesi olarak kullanabilmek için yaptık.

    final productData = dataAsJson["products"];

    for (var gezilenProduct in productData) {
      Product eklencekProduct = Product(
          id: gezilenProduct["id"],
          title: gezilenProduct["title"],
          description: gezilenProduct["description"],
          price: gezilenProduct["price"],
          thumbnail: gezilenProduct["thumbnail"]);
      productListByModel.add(eklencekProduct);
    }

    setState(() {
      // productList = dataAsJson["products"]; //Bunu yukarı taşıdık
      productList = productListByModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (ctx, index) => ProductItem(
              price: productList[index].price,
              imgUrl: productList[index].thumbnail,
              title: productList[index].title)
          // ProductItem(
          //   imgUrl: productList[index]["thumbnail"],
          //   title: productList[index]["title"],
          // ),
          ),
    );
  }
}
