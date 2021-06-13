import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 100.0.w,
                height: 10.0.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/banner.PNG'))),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Fully Automated Micro Irrigation System",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                      textStyle: TextStyle(
                    fontSize: 20.0.sp,
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 20.0.w,
                    //width: 10.0.w,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Step-1",
                        style: GoogleFonts.courgette(
                          textStyle: TextStyle(fontSize: 20.0.sp),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    width: 0.5.w,
                    height: 12.0.h,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.cyan)),
                    width: 40.0.w,
                    height: 4.0.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: Text(
                        "Input Data",
                        style: TextStyle(fontSize: 10.0.sp, color: Colors.cyan),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'input');
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 20.0.w,
                    //width: 10.0.w,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Step-2",
                        style: GoogleFonts.courgette(
                          textStyle: TextStyle(fontSize: 20.0.sp),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    width: 0.50.w,
                    height: 12.0.h,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.cyan)),
                    width: 40.0.w,
                    height: 4.0.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: Text(
                        "Design",
                        style: TextStyle(fontSize: 10.0.sp, color: Colors.cyan),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'design');
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
