import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project/ui/screens/homescreen.dart';

class Thankyoupage extends StatelessWidget {
  const Thankyoupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    size: 30.sp,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                height: 180.h,
                width: 180.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: Colors.green, width: 3.w)),
              child: Center(child: Image.asset('assets/images/image18.png',height: 100.h,width: 100.w,),),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            Center(
              child: Text(
                      'Thank You',
                      style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.w700),
                    ),
            ),
             SizedBox(
              height: 35.h,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   'PAYMENT MADE',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        color: Color(0xFF2B4c59),
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '\$650',
                    style: GoogleFonts.roboto(
                        fontSize: 17.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),
                  ),
              
                ],
              ),
            ),
             SizedBox(
              height: 30.h,
            ),
             Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text(
                    'Well done Your payment is\nSuccessfuly  done\nand your car is on its way.',
                    style: GoogleFonts.redHatMono(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
             ),
             SizedBox(
              height: 100.h,
            ),

            GestureDetector(
             
              child: Container(
                height: 55.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Color(0xFF2B4c59), width: 2.w)),
                child: Center(
                  child: Text(
                    'Track',
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        color: Color(0xFF2B4c59),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Homescreen())),
              child: Container(
                height: 55.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFF2B4c59)),
                child: Center(
                  child: Text(
                    'Go Back',
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
