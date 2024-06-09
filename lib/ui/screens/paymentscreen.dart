import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/screens/carddetails.dart';

class Paymentscreen extends StatefulWidget {
  const Paymentscreen({super.key});

  @override
  State<Paymentscreen> createState() => _PaymentscreenState();
}

class _PaymentscreenState extends State<Paymentscreen> {

  bool ischeched=false;
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
            Text(
              'Payment Methods',
              style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 90.h,
              child: Row(
                children: [
                  Container(
                    width: 120.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Color.fromARGB(255, 222, 201, 5))),
                    child: Center(
                      child: Image.asset(
                        'assets/images/image14.png',
                        height: 100.h,
                        width: 100.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Image.asset(
                    'assets/images/image15.png',
                    height: 105.h,
                    width: 105.w,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    height: 58.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                            color: const Color.fromARGB(255, 2, 30, 52))),
                    child: Center(
                      child: Image.asset(
                        'assets/images/image16.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 100.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text(
              'OUR CODE',
              style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  color: Color(0xFF2B4C59),
                  fontWeight: FontWeight.w700),
            ),
              Text(
              '1001110',
              style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
            ],),
               SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 'Sim Name:',
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Lorem Ipsum',
                  style: GoogleFonts.roboto(
                      fontSize: 13.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),

              ],
            ),
             Divider(thickness: 1,color: Colors.grey,
            ),
              SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 'Phone Number:',
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '+ 250 000 11 0011',
                  style: GoogleFonts.roboto(
                      fontSize: 13.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),

              ],
            ),
             Divider(thickness: 1,color: Colors.grey,
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
                      fontSize: 14.sp,
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
             Divider(thickness: 1,color: Colors.grey,
            ),
            SizedBox(height: 150.h,),
            GestureDetector(
                    onTap: () =>Navigator.push(
                context, MaterialPageRoute(builder: (context) => Carddetails())),
                    child: Container(
                      height: 55.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r), color: Color(0xFF2B4c59)),
                    child: Center(child:
                        Text(
                            'Pay',
                            style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                color:Colors.white,
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
