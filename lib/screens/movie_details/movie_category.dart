import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget{
  String category;
  MyCategory({required this.category});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Stack(
        children: [
          Image.asset('assets/images/movies_category.jpg'),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width*0.3,
                  left: MediaQuery.of(context).size.width*0.1
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}