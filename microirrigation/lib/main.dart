import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:microirrigation/AuthenticationService.dart';
import 'package:microirrigation/Screen/Home.dart';
import 'package:microirrigation/Register.dart';
import 'package:microirrigation/Screen/cropdata.dart';
import 'package:microirrigation/Screen/design.dart';
import 'package:microirrigation/Screen/designpara.dart';
import 'package:microirrigation/Screen/inputdata.dart';
import 'package:microirrigation/Screen/landdata.dart';
import 'package:microirrigation/Screen/sanddata.dart';
import 'package:provider/provider.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        )
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            routes: {
              'input': (context) => Input(),
              'design': (context) => Design(),
              'landdata': (context) => LandD(),
              'cropdata': (context) => CropD(),
              'sanddata': (context) => SandD(),
              'designpara': (context) => DesignPara()
            },
            debugShowCheckedModeBanner: false,
            builder: BotToastInit(), //1. call BotToastInit
            navigatorObservers: [BotToastNavigatorObserver()],
            home: AuthenticationWrapper(),
          );
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    print(firebaseUser.toString());
    if (firebaseUser == null) {
      return Register();
    } else {
      return Home();
    }
  }
}
