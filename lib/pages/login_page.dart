import 'package:flutter/material.dart';
import 'package:firebase_flutter/components/my_button.dart';
import 'package:firebase_flutter/components/my_textfield.dart';
// import 'package:firebase_flutter/components/square_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/my_text.dart';

class LoginPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal Scroll Images')),
      body: Column(children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                    child: Image.network(imageUrls[index], fit: BoxFit.cover)),
              );
            },
          ),
        ),
        SizedBox(
          height: 56,
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Image Title ${index + 1}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Image.network(
                          imageUrls[index],
                          height: 250,
                          fit: BoxFit.fitWidth,
                        ),
                      ]));
            },
          ),
        ),
      ]),
    );
  }
}
