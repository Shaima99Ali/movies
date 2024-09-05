import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/app_design/app_colors.dart';
import 'package:movies/screens/movie_details/feild.dart';
import 'package:movies/screens/taps/home_/poster.dart';

import '../taps/home_/poster_extension.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});
  static const String routeName = "movie_details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 30, 29, 1),
        title: Text(
          "Dora and the lost city of gold",
          style: GoogleFonts.inter(
              color: AppColors.primaryText,
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage("assets/images/Image_large.png"),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(160, 60, 50, 10),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle,
                      size: 80,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dora and the lost city of gold",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryText),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "2019  PG-13  2h 7m",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.secondaryText),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Poster(image: "assets/images/ImageSmall.png", margin: 0),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Feild(),
                            SizedBox(
                              width: 10,
                            ),
                            Feild(),
                            SizedBox(
                              width: 10,
                            ),
                            Feild(),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Feild(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          """ Having spent most of her life
exploring the jungle,nothing could 
prepare Dora for her most dangerous
adventure yet — high school.""",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.secondaryText),
                        ),
                        const SizedBox(height: 20,),
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryText),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            width: 434,
            height: 246,
            color: AppColors.secondary,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "More Like This",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.primaryText),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context , index){
                          return const PosterExtention();
                        }
                    ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//"""
