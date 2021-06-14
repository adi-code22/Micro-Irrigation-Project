import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DesignPara extends StatefulWidget {
  @override
  _DesignParaState createState() => _DesignParaState();
}

class _DesignParaState extends State<DesignPara> {
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
                //height: 90.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: new EdgeInsets.all(20.0.sp),
                      child: Text(
                        "Dwsign Parameters",
                        style: TextStyle(
                            fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Constant in Head Loss Reduction Factor",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Pressure Required at Emitter(in m)",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText:
                              "Maximum Pressure Variation in Main and Submain(in %)",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Static Head of Pump(in m)",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Maximum Head Loss in Fittings(in %)",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {},
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Efficiency of Pump(in %)",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("SUBMIT Design Parameters"),
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
