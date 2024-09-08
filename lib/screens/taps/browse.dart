import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movies/app_design/app_colors.dart';
import 'package:movies/screens/movie_details/movie_category.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding:
            EdgeInsets.only(left: 10, top: 50, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Belongs Category',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MyCategory(category: 'Action'),

                    const SizedBox(
                      width: 20,
                    ),
                    MyCategory(category: 'Action'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MyCategory(category: 'Action'),
                    const SizedBox(
                      width: 20,
                    ),
                    MyCategory(category: 'Action'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MyCategory(category: 'Action'),
                    const SizedBox(
                      width: 20,
                    ),
                    MyCategory(category: 'Action'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}