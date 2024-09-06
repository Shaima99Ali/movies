import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/screens/taps/home_/poster.dart';

import '../../../app_design/app_colors.dart';

class PosterExtention extends StatelessWidget {
  const PosterExtention({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 97,
      height: 184,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(52, 53, 52, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Poster(image: "assets/images/dead_pool.png" , marginRight: 0, bookMarkColor: AppColors.secondary, posterIcon: Icons.add, marginBottom: 0,),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage(
                          "assets/images/star-2.png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "7.7",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryText),
                    ),
                  ],
                ),
                const SizedBox(height: 7,),
                Text("Deadpool 2",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryText,
                    )),
                const SizedBox(height: 7,),
                Text("2018  R  1h 59m" , style: GoogleFonts.inter(fontWeight: FontWeight.w400 , fontSize: 8 , color:AppColors.secondaryText),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
