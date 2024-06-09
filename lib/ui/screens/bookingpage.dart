
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/components/pricedetails.dart';
import 'package:project/ui/screens/paymentscreen.dart';

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => _BookingpageState();
}


class _BookingpageState extends State<Bookingpage> {

  List name=['Selected','Days:','Price:','Drivers Fee:'];
  List name1=[ '1','3','\$600','\$50'];
  bool ischeched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppBar(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                      size: 25.sp,
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 35.sp,
                          ),
                          Positioned(
                              top: 1.h,
                              left: 23.w,
                              child: CircleAvatar(
                                radius: 5.r,
                                backgroundColor: Colors.green,
                              ))
                        ],
                      ),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Selected',
              style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Needs a driver',
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
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
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: 200.w,
                    child: Image.asset('assets/images/image11.png')),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 0.h,
                      ),
                      Text(
                        'Range Rover',
                        style: GoogleFonts.roboto(
                            fontSize: 11.sp,
                            color: Color(0xFF2B4c59),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '\$200.00',
                        style: GoogleFonts.imprima(
                            fontSize: 12.sp,
                            color: Colors.red,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rated:  ',
                            style: GoogleFonts.imprima(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset('assets/images/image12.png',height: 18.h,width: 18.w,),
                          Image.asset('assets/images/image12.png',height: 18.h,width: 18.w,),
                           Image.asset('assets/images/image12.png',height: 18.h,width: 18.w,),
                         Image.asset('assets/images/image12.png',height: 18.h,width: 18.w,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        SizedBox(height: 5.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(thickness: 1,color: Colors.grey,
            ),
          ),
            SizedBox(height:30.h,),
         Pricedetails(name: name[0], name1: name1[0]),
           SizedBox(height:15.h,),
          Pricedetails(name: name[1], name1: name1[1]),
           SizedBox(height:15.h,),
           Pricedetails(name: name[2], name1: name1[2]),
            SizedBox(height:15.h,),
            Pricedetails(name: name[3], name1: name1[3]),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(thickness: 1,color: Colors.grey,
            ),
          ),
            SizedBox(height:8.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: GoogleFonts.roboto(
                      fontSize: 13.sp,
                      color: Color(0xFF2B4c59),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '\$650',
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                    'LOCATION',
                    style: GoogleFonts.roboto(
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                    onTap: () =>Navigator.push(
                context, MaterialPageRoute(builder: (context) => Bookingpage())),
                    child: Container(
                      height: 55.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r), color: Color.fromARGB(25, 0, 0, 0)),
                    child: Center(child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/image13.png',height: 30.h,width:30.w,),
                        SizedBox(width: 10.w,),
                        Text(
                            'Street 203   House 348  City Kigali',
                            style: GoogleFonts.inter(
                                fontSize: 13.sp,
                                color:Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                      ],
                    ) ,),
                    ),
                  ),
            ),
             SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                    onTap: () =>Navigator.push(
                context, MaterialPageRoute(builder: (context) => Paymentscreen())),
                    child: Container(
                      height: 55.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r), color: Color(0xFF2B4c59)),
                    child: Center(child:
                        Text(
                            'Confirm',
                            style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                color:Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                      ),
                    ),
                  ),
            ),
        ],
      ),
    );
  }
}
