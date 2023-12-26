import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:miniblog/models/blog.dart';
import 'package:miniblog/screens/add_blog.dart';
import 'package:miniblog/widgets/blog_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Blog> blogList = [];
  @override
  void initState() {
    super.initState();
    // http paketi ile istek atmamaız lazım
    fetchBlogs();
  }

  fetchBlogs() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");
    final response = await http.get(url);
    final List jsonData = json.decode(response.body);
    //final blogJson = jsonData[0];
    // Blog blog =
    //     // Blog(
    //     //   id: blogJson["id"],
    //     //   title: blogJson["title"],
    //     //   content: blogJson["content"],
    //     //   thumbnail: blogJson["thumbnail"],
    //     //   author: blogJson["author"],
    //     // );
    //     Blog.fromJson(blogJson);
    setState(() {
      blogList = jsonData.map((json) => Blog.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog Listesi"),
        actions: [
          IconButton(
              onPressed: () async {
                bool? result =
                    await Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => AddBlog(),
                ));
                if (result == true) {
                  fetchBlogs();
                }
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: blogList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async {
                fetchBlogs();
              },
              child: ListView.builder(
                itemBuilder: (ctx, index) => BlogItem(blog: blogList[index]),
                itemCount: blogList.length,
              ),
            ),
    );
  }
}
