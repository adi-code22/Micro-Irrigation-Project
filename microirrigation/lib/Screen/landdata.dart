import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LandD extends StatefulWidget {
  @override
  _LandDState createState() => _LandDState();
}

class _LandDState extends State<LandD> {
  String _l, _b, _slope, _location;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController _tf1;
    TextEditingController _tf2;
    TextEditingController _tf3;
    TextEditingController _tf4;
    CollectionReference firebaseFirestore =
        FirebaseFirestore.instance.collection("emai;");
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
                        "Land Data",
                        style: TextStyle(
                            fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(10.0.sp),
                      child: TextFormField(
                        controller: _tf1,
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {
                          _l = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Length of the land(in m)",
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
                        controller: _tf2,
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {
                          _b = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Breadth of the land(in m)",
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
                        controller: _tf3,
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {
                          _slope = value;
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Slope of the land",
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
                        controller: _tf4,
                        validator: (val) =>
                            val.isEmpty //|| !(val.contains('@'))
                                ? 'Enter a valid value'
                                : null,
                        onSaved: (value) {
                          _location = value;
                        },
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Location of water Resource",
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
                          Navigator.pop(context);
                        },
                        child: Text("SUBMIT Land Data"),
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

      print('dfdfdfd$_l,$_b,$_slope,$_location');

      double _2 = double.parse(_l);
      double _3 = double.parse(_b);
      double _4 = double.parse(_slope);
      //String location = String.parse(_location);

      //save
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setDouble("_2", _2);
      sharedPreferences.setDouble("_3", _3);
      sharedPreferences.setDouble("_4", _4);
      sharedPreferences.setString("location", _location);

      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }
}
