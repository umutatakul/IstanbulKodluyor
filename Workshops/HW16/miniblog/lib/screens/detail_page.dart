import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:miniblog/models/detail.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.alinanId});
  final String alinanId;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Detail detailList = Detail();

  @override
  void initState() {
    super.initState();
    fetchDetails(widget.alinanId);
  }

  fetchDetails(String detayId) async {
    Uri url = Uri.parse(
        "https://tobetoapi.halitkalayci.com/api/Articles/${widget.alinanId}");
    final response = await http.get(url);
    final jsonData = json.decode(response.body);
    setState(() {
      detailList = Detail.fromJson(jsonData);
      //detailList = jsonData.map((json) => Detail.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detay sayfası"),
      ),
      body: detailList.toString().isEmpty
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async {
                fetchDetails(widget.alinanId);
              },
              child: Text(widget.alinanId),
            ),
    );
  }
}
