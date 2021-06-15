import 'dart:math';

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

    // double _2 = 100;
    // double _3 = 100;
    // double _4 = 40;
    // //double _5 = ;

    // double _7 = 5;
    // double _8 = 5.5;
    // double _9 = 120;
    // double _10 = 1.44;
    // double _11 = 0.8;
    // double _12 = 8;
    // double _13 = .4;

    // double _15 = 8;
    // //double _16 = ;
    // double _17 = 18.4;
    // double _18 = 22.6;
    // double _19 = 59;
    // double _20 = 14.9;
    // double _21 = .7;

    // double _23 = 1.852;
    // double _24 = 10;
    // double _25 = 20;
    // double _26 = 10;
    // double _27 = 10;
    // double _28 = 60;

    //

    double s1 = _2 * _3;
    print(s1);
    double s2 = _7 * _8;
    print(s2);
    double s3 = _2 / _7;
    print(s3);
    double s4 = (_3 / _8).floor().toDouble();
    print(s4);
    double s5 = s3 * s4;
    print(s5);
    double s6 = _15 * _21 * _11;
    print(s6);
    double s7 = (s2 * _13 * s6).ceil().toDouble();
    print(s7);
    //double s8
    double s9 = 4;
    print(s9);
    double s10 = 3;
    print(s10);

    double s11 = s10 * s5;
    print(s11);
    double s12 = s9 * s10;
    print(s12);
    double s13 = s7 / s12;
    print(s13);
    double s14 = _2 / 2;
    print(s14);
    double s15 = _3 - (_8 / 2);
    print(s15);
    double s16 = (_2 - _7) / 2;
    print(s16);
    double s17 = s4 * 2;
    print(s17);
    double s18 = s3 / 2;
    print(s18);
    double s19 = (s18 * s10 * s9) / 3600;
    print(s19);
    double s20 = (s17 * s19);
    print(s20);

    double s21 = 1.852;
    print(s21);
    double s22 = s18 * s10;
    print(s22);
    double s22_2 = 0.367;
    print(s22_2);
    double s23 = _24 * 0.1;
    print(s23);
    //double s24 = pow((1.22 * pow(10,12) * pow((s19/130),1.852) * s22 * s16 / (s23*100)),(1/4.871)).toDouble();
    double s24 = 12;
    print(s24);
    //double s25 = 1.22 * pow(10,12) * pow((s19/130),1.852) * s22 * s16 /(pow(s24,4.871) * 100);
    double s25 = .26;
    print(s25);
    double s26 = 0.364;
    print(s26);
    double s27 = _24 + s25;
    print(s27);
    double s28 = s27 / 0.8;
    print(s28);
    double s29 = s28 - s27 - (_4 / 100);
    print(s29);

    double s30 = (1.22 * pow(10, 12)) *
        pow(s20 / 150, 1.852) *
        s26 *
        (s15 / (s29 * 100));
    //double s31 = (1.22 * pow(10, 12)) * pow(s20 / 150, 1.852) * s26 * (s15 / (s30 * 100));
    double s31 = 1.70;
    double s32 = s27 + s31 + (_4 / 100);
    double s33 = ((s32 - s27) * 100) / s32;
    double s34 = s20;
    double s35 = s32;
    double s36 = s35 / 0.8;
    double s37 = s36 - s35;
    double s38 = 1;
    double s39 = (1 / (s21 + 1)) +
        (1 / (2 * s38)) +
        (pow((s21 - 1), 0.5) / (6 * s38 * s38));
    double s40 = (1.22 * pow(10, 12)) *
        pow(s34 / 150, 1.852) *
        s39 *
        (s14 / (s37 * 100));

    //double s41 = (1.22 * pow(10, 12)) * pow(s34 / 150, 1.852) * s39 * (s14 / (s40 * 100));
    double s41 = 2.41;
    double s42 = ((s41 + s35) * _27) / 100;
    double s43 = s41 + s35 + s42 + _26;
    double s44 = (s43 * s34) / ((75 * _28) / 100);
    double s45 = s16 * s17;
    double s46 = s15 * s38;
    double s47 = s14 * s38;

    print(s30);
    print(s31);
    print(s32);
    print(s33);
    print(s34);
    print(s35);
    print(s36);
    print(s37);
    print(s38);
    print(s39);
    print(s40);
    print(s41);
    print(s42);
    print(s43);
    print(s44);
    print(s45);
    print(s46);
    print(s47);

    double _d2 = s1;
    double _d3 = s2;
    double _d4 = s3;
    double _d5 = s4;
    double _d6 = s5;
    double _d8 = s7;
    double _d9 = s13;
    // double _d11 = s8;
    double _d12 = s9;
    double _d13 = s10;
    double _d14 = s11;
    double _d16 = s14;
    double _d17 = s40;
    double _d18 = s47;
    double _d19 = s15;
    double _d20 = s30;
    double _d21 = s46;
    double _d22 = s16;
    double _d23 = s24;
    double _d24 = s17;
    double _d25 = s45;
    double _d27 = s44;
    double _d39 = s17;
    double _d40 = s38;
    double _d41 = s38;
    double _d42 = s38;
    double _d43 = s17;
    double _d44 = s17 + s38 + s38;
    double _d46 = s17 + s38 + s38;
    double _d47 = s5;
    double _d48 = s5;
    double _d49 = s17;

    await FirebaseFirestore.instance
        .collection("collectionPath")
        .doc("Hi")
        .set({
      "_d2": _d2,
      "_d3": _d3,
      "_d4": _d4,
      "_d5": _d5,
      "_d6": _d6,
      "_d8": _d8,
      "_d9": _d9,
      "_d12": _d12,
      "_d13": _d13,
      "_d14": _d14,
      "_d16": _d16,
      "_d17": _d17,
      "_d18": _d18,
      "_d19": _d19,
      "_d20": _d20,
      "_d21": _d21,
      "_d22": _d22,
      "_d23": _d23,
      "_d24": _d24,
      "_d25": _d25,
      "_d27": _d27,
      "_d39": _d39,
      "_d40": _d40,
      "_d41": _d41,
      "_d42": _d42,
      "_d43": _d43,
      "_d44": _d44,
      "_d46": _d46,
      "_d47": _d47,
      "_d48": _d48,
      "_d49": _d49,
    });

    print("REACHEFJKJFKFDKFDKF");
    // print("_2 Data is here: " + _23.toString());
  }
}
