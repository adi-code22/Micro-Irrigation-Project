import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Data {
  void submitData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    double _2 = sharedPreferences.getDouble("_2");
    double _3 = sharedPreferences.getDouble("_3");
    double _4 = sharedPreferences.getDouble("_4");
    double _5 = sharedPreferences.getDouble("_5");

    double _7 = sharedPreferences.getDouble("_7");
    double _8 = sharedPreferences.getDouble("_8");
    double _9 = sharedPreferences.getDouble("_9");
    double _10 = sharedPreferences.getDouble("_10");
    double _11 = sharedPreferences.getDouble("_11");
    double _12 = sharedPreferences.getDouble("_12");
    double _13 = sharedPreferences.getDouble("_13");

    double _15 = sharedPreferences.getDouble("_15");
    double _16 = sharedPreferences.getDouble("_16");
    double _17 = sharedPreferences.getDouble("_17");
    double _18 = sharedPreferences.getDouble("_18");
    double _19 = sharedPreferences.getDouble("_19");
    double _20 = sharedPreferences.getDouble("_20");
    double _21 = sharedPreferences.getDouble("_21");

    double _23 = sharedPreferences.getDouble("_23");
    double _24 = sharedPreferences.getDouble("_24");
    double _25 = sharedPreferences.getDouble("_25");
    double _26 = sharedPreferences.getDouble("_26");
    double _27 = sharedPreferences.getDouble("_27");
    double _28 = sharedPreferences.getDouble("_28");

    //Equation Starts here
    double _d2 = _2 * _3;
    double _d3 = _7 * _8;
    double _d4 = _2 / _7;
    double _d5 = _3 / _8;
    double _d6 = _d4 * _d5;

    double _d16 = _2 / 2;
    double _d18 = _d16 * 1;
    double _d19 = _3 - (_8 / 2);
    double _d21 = _d19 * 1;
    double _d22 = _2 - (_7 / 2);
    double _d24 = _d5 * 2;
    double _d25 = _d24 * _d22;

    await FirebaseFirestore.instance.collection("collectionPath").doc("Hi").set({
      "_d2": _d2,
      "_d3": _d3,
      "_d4": _d4,
      "_d5": _d5,
      "_d6": _d6,
      
    });

    print(_d16);
    print("REACHEFJKJFKFDKFDKF");
    // print("_2 Data is here: " + _23.toString());
  }
}
