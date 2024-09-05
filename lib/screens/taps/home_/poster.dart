import 'package:flutter/material.dart';

import '../../../app_design/app_colors.dart';

class Poster extends StatelessWidget {
  String image = "";
  double margin = 0;
  Poster({super.key, required this.image , required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: margin),
      child: Stack(
        children: [
           Image(image: AssetImage(image)),
          Icon(
            Icons.bookmark,
            color: AppColors.secondary.withOpacity(0.7),
            size: 35,
          ),
          IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 13 ,bottom: 14),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
    );
  }
}
