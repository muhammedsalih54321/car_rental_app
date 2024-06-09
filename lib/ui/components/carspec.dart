import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Carspec extends StatelessWidget {
  final String name1;
  final String name2;
  const Carspec({super.key, required this.name1, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      elevation: 2,
                      shadowColor: Colors.black,
                      child: Container(
                        width: 150.h,
                        color:Color(0xFFF6F6F6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              name1,
                              style: GoogleFonts.imprima(
                                  fontSize: 12.sp,
                                  color: Color(0xFF95BCCC),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5.h,),
                            Text(
                              name2,
                              style: GoogleFonts.imprima(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
  }
}