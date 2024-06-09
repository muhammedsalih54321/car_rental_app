
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/components/carspec.dart';
import 'package:project/ui/screens/bookingpage.dart';

class Cardetails extends StatefulWidget {
  const Cardetails({super.key});

  @override
  State<Cardetails> createState() => _CardetailsState();
}

class _CardetailsState extends State<Cardetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 450.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                  color: Color(0xFF95BCCC),
                ),
              ),
              SafeArea(
                  child: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                  )
                ],
              )),
              Positioned(
                top: 121.h,
                left: 20.w,
                child: Text(
                  'TIIRA',
                  style: GoogleFonts.imprima(
                      fontSize: 160.sp,
                      color: Colors.white.withOpacity(0.4399999976158142),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                  top: 120.h,
                  left: 5.w,
                  child: Image.asset(
                    'assets/images/image7.png',height: 380.h,width: 380.w,
                  ))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Range Rover',
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$200.00',
                  style: GoogleFonts.imprima(
                      fontSize: 12.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 110.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Carspec(name1: 'Transition', name2: 'Automatic'),
                  Carspec(name1: 'Speed', name2: '200kmph'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
                        width: 150.h,
                        color: Color(0xFFF6F6F6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Transition',
                              style: GoogleFonts.imprima(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'RENDER',
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage('assets/images/image8.png')),
            title: Text(
              'Lorem Ipsum',
              style: GoogleFonts.roboto(
                  fontSize: 13.sp,
                  color: Color(0xFF2B4c59),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Wrap(
              children: [
                Image.asset('assets/images/image9.png',height: 30.h,width: 30.w,),
                SizedBox(
                  width: 10.w,
                ),
                Image.asset('assets/images/image10.png',height: 30.h,width: 30.w,)
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () =>Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bookingpage())),
                  child: Container(
                    height: 60.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r), color: Colors.black),
                  child: Center(child:Text(
                      'BOOK NOW',
                      style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color:Colors.white,
                          fontWeight: FontWeight.w400),
                    ) ,),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
