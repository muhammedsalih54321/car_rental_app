import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/screens/thankyouscreen.dart';

class Carddetails extends StatefulWidget {
  const Carddetails({super.key});

  @override
  State<Carddetails> createState() => _CarddetailsState();
}

class _CarddetailsState extends State<Carddetails> {
  bool ischeched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
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
              height: 20.h,
            ),
            Image.asset('assets/images/image17.png'),
            SizedBox(
              height: 0.h,
            ),
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 290.h,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Card Number:',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '111 0111 202 0110 011',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Expiration Date:',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '02.05.2030',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CCV:',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '142',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rememer This Info:',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Switch(
                          activeColor: Color.fromARGB(255, 218, 216, 216),
                          activeTrackColor: Color(0xFF2B4c59),
                          inactiveTrackColor: Color(0xFF2B4c59),
                          value: ischeched,
                          onChanged: (value) {
                            setState(() {
                              ischeched = value;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thankyoupage())),
                child: Container(
                  height: 55.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xFF2B4c59)),
                  child: Center(
                    child: Text(
                      'Pay',
                      style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
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
