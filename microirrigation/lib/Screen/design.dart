import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var _textStyleRed = TextStyle(
      color: Colors.red, fontSize: 7.0.sp, fontWeight: FontWeight.bold);
  var _textStyleHeadin = TextStyle(
      color: Colors.black, fontSize: 7.0.sp, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
          stream: firebaseFirestore
              .collection("collectionPath")
              .doc('Hi')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            // double test = snapshot.data["siltc"];
            // print(test);
            return Column(
              children: [
                Center(
                  child: Text(
                    "Cultivation Details",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Area of land in m^2: ", style: _textStyleHeadin),
                        Text("Area covered by a single plant in m^2:  ",
                            style: _textStyleHeadin),
                        Text("No. of crops in a Row:  ",
                            style: _textStyleHeadin),
                        Text("No. of Columns of Crops:  ",
                            style: _textStyleHeadin),
                        Text("Total no. of Crops:  ", style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data["_d2"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d3"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d4"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d5"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d6"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                Center(
                  child: Text(
                    "Irrigation Details",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Volume of Water Required per Plant in L/H:  ",
                            style: _textStyleHeadin),
                        Text("Total Hours of Irrigation :  ",
                            style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data["_d8"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d9"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),

                Center(
                  child: Text(
                    "Emitter Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Emitter Type:  ", style: _textStyleHeadin),
                        Text("Emitter Capacity in L/H:  ",
                            style: _textStyleHeadin),
                        Text("No. of Emitters per Plant:  ",
                            style: _textStyleHeadin),
                        Text("Total No. of Emitters:  ",
                            style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          //snapshot.data["_d11"].toString()??
                          "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d12"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d13"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d14"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda

                Center(
                  child: Text(
                    "Piping Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Length of Main Pipe in m:  ",
                            style: _textStyleHeadin),
                        Text("Diameter of Main Pipe in mm:  ",
                            style: _textStyleHeadin),
                        Text("Total Length of Main Pipe Required in m:  ",
                            style: _textStyleHeadin),
                        Text("Length of Submain Pipe in m:  ",
                            style: _textStyleHeadin),
                        Text("Diameter of Submain Pipe in mm:  ",
                            style: _textStyleHeadin),
                        Text("Total Length of Submain Pipe Required in m:  ",
                            style: _textStyleHeadin),
                        Text("Length of Single Lateral Pipe in m:  ",
                            style: _textStyleHeadin),
                        Text("Diameter of Lateral Pipe in mm:  ",
                            style: _textStyleHeadin),
                        Text("No. of Lateral Pipe Required:  ",
                            style: _textStyleHeadin),
                        Text("Total Length of Lateral Pipes Required in m:  ",
                            style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data["_d16"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d17"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d18"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d19"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d20"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d21"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d22"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d23"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d24"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d25"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda

                Center(
                  child: Text(
                    "Pumping Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("HP Capacity of Motor Pump Required:  ",
                            style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data["_d27"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda

                Center(
                  child: Text(
                    "Fertigation System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fertilizer Requirement:  ",
                            style: _textStyleHeadin),
                        Text("Amount of Fertilizer per Setting in kg:  ",
                            style: _textStyleHeadin),
                        Text("Fertilizer Concentration in ppm:  ",
                            style: _textStyleHeadin),
                        Text("Fertilizer Injection Rate in L/H:  ",
                            style: _textStyleHeadin),
                        Text("Fertigation Tank Capacity in L:  ",
                            style: _textStyleHeadin),
                        Text("Fertigation Method:  ", style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda

                Center(
                  child: Text(
                    "Filter System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("No. of Media Filter:  "),
                        Text("No. of Screen Filter:  "),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "snull",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda

                Center(
                  child: Text(
                    "Automation System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),

                //sadsdsdas
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("No. of Solenoid Valves Required:  ",
                            style: _textStyleHeadin),
                        Text("Hydraulic Valve Operated with Solenoid Valves:  ",
                            style: _textStyleHeadin),
                        Text("Metering Valves at Main Pipe:  ",
                            style: _textStyleHeadin),
                        Text("Metering Valves at Submain Pipe:  ",
                            style: _textStyleHeadin),
                        Text("Metering Valves at Lateral Pipes:  ",
                            style: _textStyleHeadin),
                        Text("Total Metering Valves Required:  ",
                            style: _textStyleHeadin),
                        Text("Metering Pumps for Fertigation:  ",
                            style: _textStyleHeadin),
                        Text("Flow Transducers:  ", style: _textStyleHeadin),
                        Text("Water Moisture Sensors:  ",
                            style: _textStyleHeadin),
                        Text("Tensiometers:  ", style: _textStyleHeadin),
                        Text("Infrared Sensors:  ", style: _textStyleHeadin),
                        Text("Relays Required:  ", style: _textStyleHeadin),
                        Text("No. of PLCs:  ", style: _textStyleHeadin),
                        Text("Capacity of I/O Modules:  ",
                            style: _textStyleHeadin),
                        Text("Total No. of I/O Modules Required:  ",
                            style: _textStyleHeadin),
                        Text("Timer Counter Modules Required:  ",
                            style: _textStyleHeadin),
                        Text("Capacity of IoT Modules:  ",
                            style: _textStyleHeadin),
                        Text("No. of PLC Power Supply Module:  ",
                            style: _textStyleHeadin),
                        Text("No. of Server Computers:  ",
                            style: _textStyleHeadin),
                        Text("No. of Client Computers:  ",
                            style: _textStyleHeadin),
                        Text("Communication Infrastructure:  ",
                            style: _textStyleHeadin),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data["_d39"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d40"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d41"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d42"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d43"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d44"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d46"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d47"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d48"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          snapshot.data["_d49"].toString() ?? "0",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                        Text(
                          "null",
                          style: _textStyleRed,
                        ),
                      ],
                    )
                  ],
                ),
                //sdsdsdsadsdsdsda
              ],
            );
          },
        ),
      ),
    );
  }
}
