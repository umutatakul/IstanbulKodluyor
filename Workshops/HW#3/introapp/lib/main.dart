import 'package:flutter/material.dart';

void main() {
  var date = DateTime.now().toString();
  print(date.toString());
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://media.licdn.com/dms/image/C5103AQHHangPGfddxA/profile-displayphoto-shrink_200_200/0/1516465123802?e=1700697600&v=beta&t=XRPOaeOVwR77h7_g1noxW5W5QPYbOEO0vQ1Add7wB08"),
              ),
              Text("Umut Atakul", style: TextStyle(fontSize: 32)),
              Text("Tobeto | Mobil Geiştirici | 1B"),
              Text("31.10.2023")
            ],
          ),
        ),
      ),
    ),
  );
}
