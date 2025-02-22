import 'package:flutter/material.dart';


class Poster extends StatelessWidget {
  String image = "";
  double marginRight = 0;
  double marginBottom = 0;
  Color bookMarkColor ;
  IconData posterIcon ;
  Poster({super.key, required this.image , required this.marginRight , required this.bookMarkColor , required this.posterIcon , required this.marginBottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight , bottom: marginBottom),
      child: Stack(
        children: [
           Image(image: AssetImage(image)),
          Icon(
            Icons.bookmark,
            color: bookMarkColor.withOpacity(0.7),
            size: 35,
          ),
          IconButton(
              onPressed: () {},
              icon:  Padding(
                padding: const EdgeInsets.only(right: 13 ,bottom: 14),
                child: Icon(
                   posterIcon,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
    );
  }
}
