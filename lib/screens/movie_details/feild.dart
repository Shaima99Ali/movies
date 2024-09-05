import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_design/app_colors.dart';

class Feild extends StatelessWidget {
  const Feild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 25,
      decoration : BoxDecoration(
        border: Border.all(color: AppColors.secondaryText , width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16 , 5 , 0 , 0),
        child: Text("Action" ,style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400 , color: AppColors.secondaryText),),
      ),
    );
  }
}
