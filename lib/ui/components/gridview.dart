import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class MyWidget extends StatelessWidget {
  final Color colorch;
  final String img;
  final String name;
  final String sub;

  const MyWidget({
    super.key,
    required this.colorch,
    required this.img,
    required this.name,
    required this.sub,
   
  });

  @override
  Widget build(BuildContext context) {
    return Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: GestureDetector(
                    child: Stack(
                        children: [
                           Container(
                          height: 400.h,
                          width: 500.w,
                          decoration: BoxDecoration(
                             color: colorch,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                          Container(
                            height: 130.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: double.infinity,
                            child: Image.asset(
                             img,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 100.h,
                            left: 10.w,
                            child: Text(
                              name,
                              style: GoogleFonts.roboto(
                                  fontSize: 11.sp,
                                  color: Color(0xFF2B4C59),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                              top: 120.h,
                              left: 10.w,
                              child: Row(
                                children: [
                                  Text(
                                    sub,
                                    style: GoogleFonts.roboto(
                                        fontSize: 10.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '/day',
                                    style: GoogleFonts.roboto(
                                        fontSize: 10.sp,
                                        color: Color(0xFF988080),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: 135.h,
                              left: 100.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: Color(0xFF2B4C59),
                                    size: 25.sp,
                                  )
                                ],
                              )),
                        ],
                      ),
                    
                  ),
                );
  }
}
