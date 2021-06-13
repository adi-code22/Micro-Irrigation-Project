import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:microirrigation/AuthenticationService.dart';
import 'package:microirrigation/Screen/Home.dart';
import 'package:microirrigation/Login.dart';
import 'package:microirrigation/constants/Loading.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email;

  String _password;

  String _access_code;
  final _formkey = GlobalKey<FormState>();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Center(
              child: Container(
                width: 400,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem Ipsum",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 70,
                                fontFamily: 'LobsterTwo',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        TextFormField(
                          validator: (val) =>
                              val.isEmpty || !(val.contains('@'))
                                  ? 'Enter a valid email address'
                                  : null,
                          onSaved: (value) => _email = value,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            labelText: "Email",
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
                        SizedBox(
                          height: 25,
                        ),

                        //Password Field

                        TextFormField(
                          validator: (val) => val.isEmpty || val.length < 6
                              ? 'Enter a password greater than 6 characters'
                              : null,
                          onSaved: (value) => _password = value,
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            labelText: "Password",
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
                        SizedBox(
                          height: 25,
                        ),

                        //Password Field

                        TextFormField(
                          validator: (val) => val.isEmpty || val.length < 6
                              ? 'Enter a password greater than 6 characters'
                              : null,
                          onSaved: (value) => _access_code = value,
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            labelText: "Access Code",
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
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          child: PhysicalModel(
                            color: Colors.transparent,
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () async {
                                final form = _formkey.currentState;
                                if (form.validate()) {
                                  form.save();
                                  setState(() {
                                    loading = true;
                                  });
                                  print('$_email,$_password,$_access_code');
                                  //Converting to int

                                  dynamic isSuccess = await context
                                      .read<AuthenticationService>()
                                      .signUp(
                                          email: _email,
                                          password: _password,
                                          accesscode: _access_code);
                                  if (isSuccess.toString() == "Signed up") {
                                    print("Successfully Registered");

                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Home()));
                                  } else if (isSuccess == "Wrong code") {
                                    print("Wrong access code");
                                    BotToast.showText(
                                        text:
                                            "Wrong access code"); //popup a text toast;

                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Register()));
                                  } else {
                                    print("You caused havoc");
                                    BotToast.showText(
                                        text:
                                            "Something went wrong! Check network and try again");
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Register()));
                                  }
                                  return true;
                                } else {
                                  print("Form invalid");
                                  return false;
                                }

                                // if (_formkey.currentState.validate()) {
                                //   setState(() {
                                //     loading = true;
                                //   });

                                //   if (isSuccess.toString() == "Signed up") {
                                //     Navigator.pushReplacementNamed(context, '/Home');
                                //     BotToast.showSimpleNotification(
                                //       title: " Welcome! ",
                                //       backgroundColor: Colors.orangeAccent,
                                //     );
                                //   } else {
                                //     Navigator.pushReplacementNamed(
                                //         context, '/Register');
                                //     BotToast.showSimpleNotification(
                                //       title:
                                //           "Failed to register. Please check internet connection and try again!",
                                //       backgroundColor: Colors.red,
                                //     );
                                //   }
                                // }
                              },
                              color: Colors.black,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Login()));
                            },
                            child: Text(
                              "Already registered ? Login Here",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w900),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
