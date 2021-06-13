import 'package:flutter/material.dart';
import 'package:microirrigation/AuthenticationService.dart';
import 'package:microirrigation/Home.dart';
import 'package:microirrigation/Register.dart';
import 'package:microirrigation/constants/Loading.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email;

  String _password;

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
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 70,
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

                        //Password Field

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
                                  print('$_email,$_password,');
                                  //Converting to int

                                  dynamic isSuccess = await context
                                      .read<AuthenticationService>()
                                      .signIn(
                                          email: _email, password: _password);
                                  print(isSuccess);
                                  if (isSuccess.toString() == "Signed in") {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Home()));
                                  } else {
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
