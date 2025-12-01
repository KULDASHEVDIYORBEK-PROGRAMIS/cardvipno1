import 'package:cardvipno1/colors/Ap_colors.dart';
import 'package:cardvipno1/widget/animate_contenir_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reantvsimages extends StatelessWidget {
  const reantvsimages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Rent a Car anytime",
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 108),
              AnimatedButton(
                width: 110,
                height: 33,
                borderRadius: BorderRadius.circular(15),
                color: ApColors.green,
                onTap: () {
                  print("Host & Earn bosildi");
                },
                child: Center(
                  child: Text(
                    "Host & Earn",
                    style: TextStyle(fontSize: 12, color: ApColors.whit),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
