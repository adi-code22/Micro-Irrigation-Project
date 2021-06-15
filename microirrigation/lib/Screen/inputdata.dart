import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 90.0.w,
                height: 90.0.h,
                color: Colors.cyan,
                child: Column(
                  children: [
                    Padding(
                      padding: new EdgeInsets.all(20.0.sp),
                      child: Text(
                        "Input Data",
                        style: TextStyle(
                            fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.only(
                                    top: 25,
                                    bottom: 25,
                                    left: 150,
                                    right: 150)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'landdata');
                            },
                            child: Text(
                              "Land Data",
                              style: TextStyle(fontSize: 8.0.sp),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.only(
                                    top: 25,
                                    bottom: 25,
                                    left: 150,
                                    right: 150)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'cropdata');
                            },
                            child: Text(
                              "Crop Data",
                              style: TextStyle(fontSize: 8.0.sp),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.only(
                                    top: 25,
                                    bottom: 25,
                                    left: 150,
                                    right: 150)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'sanddata');
                            },
                            child: Text(
                              "Sand Data",
                              style: TextStyle(fontSize: 8.0.sp),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.only(
                                    top: 25,
                                    bottom: 25,
                                    left: 115,
                                    right: 115)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'designpara');
                            },
                            child: Text(
                              "Design Parameters",
                              style: TextStyle(fontSize: 8.0.sp),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
