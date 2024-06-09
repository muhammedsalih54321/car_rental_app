import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pricedetails extends StatelessWidget {

  final String name;
  final String name1;
  const Pricedetails({super.key, required this.name, required this.name1});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  name1,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          );
  }
}