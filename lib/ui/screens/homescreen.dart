import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/components/gridview.dart';
import 'package:project/ui/screens/cardetails.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List img1 = [
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png'
  ];
  List name1 = ['TOYOTA', 'LAMBORGHINI', 'RANGE ROVER', 'TESLA'];
  List sub1 = ['\$300', '\$550', '\$150', '\$150'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/image1.png'),
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
                      backgroundColor: Colors.red,
                      child: Center(
                          child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w400),
                      )),
                    ))
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Image.asset('assets/images/image2.png'),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                Text(
                  'Cars Available Near You',
                  style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Expanded(
                child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 370 / 400,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15),
              children: [
                MyWidget(
                    colorch: Color(0xFFCCBCBC),
                    img: 'assets/images/image3.png',
                    name: 'TOYOTA',
                    sub: '\$300'),
                MyWidget(
                    colorch: Color(0xFFF6F6F6),
                    img: 'assets/images/image4.png',
                    name: 'LAMBORGHINI',
                    sub: '\$550'),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cardetails())),
                    child: MyWidget(
                        colorch: Color(0x93FCC21A),
                        img: 'assets/images/image5.png',
                        name: 'RANGE ROVER',
                        sub: '\$150')),
                MyWidget(
                    colorch: Color(0xFFF7F7F7),
                    img: 'assets/images/image6.png',
                    name: 'TESLA',
                    sub: '\$150'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
