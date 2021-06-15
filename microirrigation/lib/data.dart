import 'package:shared_preferences/shared_preferences.dart';

class Data {
  void submitData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    double _23 = sharedPreferences.getDouble("_23");
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
    print("REACHEFJKJFKFDKFDKF");
    print("_2 Data is here: " + _23.toString());
  }
}
