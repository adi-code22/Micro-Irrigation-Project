import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class SandD extends StatefulWidget {
  @override
  _SandDState createState() => _SandDState();
}

class _SandDState extends State<SandD> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _15, _16, _17, _18, _19, _20, _21;
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
                        "Soil Data",
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
                        onSaved: (value) {
                          _15 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Maximum Pan Evaporation(in mm/day)",
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
                        onSaved: (value) {
                          _16 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Soil texture",
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
                        onSaved: (value) {
                          _17 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Clay Content in Soil(in %)",
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
                        onSaved: (value) {
                          _18 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Silt Content of Soil(in %)",
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
                        onSaved: (value) {
                          _19 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Sand Content in Soil(in %)",
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
                        onSaved: (value) {
                          _20 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Field Capacity of Soil(in %)",
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
                        onSaved: (value) {
                          _21 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Pan Coefficient(in %)",
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
                        onPressed: () {
                          validateAndSave();
                        },
                        child: Text("SUBMIT Sand Data"),
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

  validateAndSave() async {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();

      print('$_16,$_16,$_17,$_18,$_19,$_20,$_21,');

      double __15 = double.parse(_15);
      double __16 = double.parse(_16);
      double __17 = double.parse(_17);
      double __18 = double.parse(_18);
      double __19 = double.parse(_19);
      double __20 = double.parse(_20);
      double __21 = double.parse(_21);
      //save
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setDouble("_15", __15);
      sharedPreferences.setDouble("_16", __16);
      sharedPreferences.setDouble("_17", __17);
      sharedPreferences.setDouble("_18", __18);
      sharedPreferences.setDouble("_19", __19);
      sharedPreferences.setDouble("_20", __20);
      sharedPreferences.setDouble("_21", __21);

      //to DB;

      //adding to DB;

      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }
}
