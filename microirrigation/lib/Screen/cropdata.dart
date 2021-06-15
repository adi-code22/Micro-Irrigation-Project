import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class CropD extends StatefulWidget {
  @override
  _CropDState createState() => _CropDState();
}

class _CropDState extends State<CropD> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _7, _8, _9, _10, _11, _12, _13;
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
                        "Crop Data",
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
                          _7 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Row wise distance between Plants(in m)",
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
                          _8 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText:
                              "Column wise distance between Plants(in m)",
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
                          _9 = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Effective root zone depth(in cm)",
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
                          _10 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Bulk density of plant roots(in gcc)",
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
                          _11 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Crop coefficient(in %)",
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
                          _12 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Wilting Point of Plant(in %)",
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
                          _13 = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Wettinf Fraction(in %)",
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
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: EdgeInsets.only(
                                top: 25, bottom: 25, left: 150, right: 150)),
                        onPressed: () {
                          validateAndSave();
                        },
                        child: Text("SUBMIT Crop Data"),
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

      print('$_7,$_8,$_9,$_10,$_11,$_12,$_13,');

      double __7 = double.parse(_7);
      double __8 = double.parse(_8);
      double __9 = double.parse(_9);
      double __10 = double.parse(_10);
      double __11 = double.parse(_11);
      double __12 = double.parse(_12);
      double __13 = double.parse(_13);

      //fetch shared

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      sharedPreferences.setDouble("_7", __7);
      sharedPreferences.setDouble("_8", __8);
      sharedPreferences.setDouble("_9", __9);
      sharedPreferences.setDouble("_10", __10);
      sharedPreferences.setDouble("_11", __11);
      sharedPreferences.setDouble("_12", __12);
      sharedPreferences.setDouble("_13", __13);

      double l = sharedPreferences.getDouble('l');
      double b = sharedPreferences.getDouble('b');
      double _d2 = sharedPreferences.getDouble('_d2');
      //To Shared

      sharedPreferences.setDouble('_7', __7);

      //To DB;

      double _d3 = __7 * __8;
      double _d4 = l / __7;
      double _d5 = b / __8;
      double _d6 = _d4 * _d5;

      //adding to db;

      await FirebaseFirestore.instance
          .collection("collectionPath")
          .doc("Hi")
          .set({
        "_d2": _d2,
        "_d3": _d3,
        "_d4": _d4,
        "_d5": _d5,
        "_d6": _d6,
      }).then((value) => Navigator.pop(context));

      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }
}
