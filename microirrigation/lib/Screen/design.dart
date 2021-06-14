import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
          stream:
              firebaseFirestore.collection("email").doc('CropD').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            double test = snapshot.data["siltc"];
            print(test);
            return Column(
              children: [
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Cultivation Details",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("Area of land in m^2:  "),
                Text("Area covered by a single plant in m^2:  "),
                Text("No. of crops in a Row:  "),
                Text("No. of Columns of Crops:  "),
                Text("Total no. of Crops:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Irrigation Details",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("Volume of Water Required per Plant in L/H:  "),
                Text("Total Hours of Irrigation :  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Emitter Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("Emitter Type:  "),
                Text("Emitter Capacity in L/H:  "),
                Text("No. of Emitters per Plant:  "),
                Text("Total No. of Emitters:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Piping Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("Length of Main Pipe in m:  "),
                Text("Diameter of Main Pipe in mm:  "),
                Text("Total Length of Main Pipe Required in m:  "),
                Text("Length of Submain Pipe in m:  "),
                Text("Diameter of Submain Pipe in mm:  "),
                Text("Total Length of Submain Pipe Required in m:  "),
                Text("Length of Single Lateral Pipe in m:  "),
                Text("Diameter of Lateral Pipe in mm:  "),
                Text("No. of Lateral Pipe Required:  "),
                Text("Total Length of Lateral Pipes Required in m:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Pumping Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("HP Capacity of Motor Pump Required:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Fertigation System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("Fertilizer Requirement:  "),
                Text("Amount of Fertilizer per Setting in kg:  "),
                Text("Fertilizer Concentration in ppm:  "),
                Text("Fertilizer Injection Rate in L/H:  "),
                Text("Fertigation Tank Capacity in L:  "),
                Text("Fertigation Method:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Filter System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("No. of Media Filter:  "),
                Text("No. of Screen Filter:  "),
                Padding(
                  padding: new EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Automation System Design",
                    style:
                        TextStyle(fontSize: 20.0.sp, fontFamily: "LobsterTwo"),
                  ),
                ),
                Text("No. of Solenoid Valves Required:  "),
                Text("Hydraulic Valve Operated with Solenoid Valves:  "),
                Text("Metering Valves at Main Pipe:  "),
                Text("Metering Valves at Submain Pipe:  "),
                Text("Metering Valves at Lateral Pipes:  "),
                Text("Total Metering Valves Required:  "),
                Text("Metering Pumps for Fertigation:  "),
                Text("Flow Transducers:  "),
                Text("Water Moisture Sensors:  "),
                Text("Tensiometers:  "),
                Text("Infrared Sensors:  "),
                Text("Relays Required:  "),
                Text("No. of PLCs:  "),
                Text("Capacity of I/O Modules:  "),
                Text("Total No. of I/O Modules Required:  "),
                Text("Timer Counter Modules Required:  "),
                Text("Capacity of IoT Modules:  "),
                Text("No. of PLC Power Supply Module:  "),
                Text("No. of Server Computers:  "),
                Text("No. of Client Computers:  "),
                Text("Communication Infrastructure:  "),
              ],
            );
          },
        ),
      ),
    );
  }
}
