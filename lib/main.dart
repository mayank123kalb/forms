import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                Text(
                  "AutoBuddy",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                Text(
                  "REgistration Form",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Enter the child's full name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please enter a valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter the parent's first name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please enter a valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Enter parent's last name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please enter a valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Enter your phone number"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                            .hasMatch(value)) {
                      return "Please enter a valid number";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Enter child's date of birth"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$")
                            .hasMatch(value)) {
                      return "Please enter a valid date of birth";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter user id"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9_]*$").hasMatch(value)) {
                      return "Please enter a valid alphanumeric user id";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter password"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value)) {
                      return "Please use minimum 1 upper case, 1 lower case, 1 numeric character, 1 special character";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your email id"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return "Please enter a valid email id";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in",
                          style: TextStyle(
                              fontSize: 22, color: Color(0xFF363f93))),
                      NeumorphicButton(
                          margin: EdgeInsets.only(top: 12),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final snackBar =
                                  SnackBar(content: Text('Submit Form'));
                              _scaffoldKey.currentState!.showSnackBar(snackBar);
                            }
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle(),
                          )),
                    ])
              ],
            ),
          ),
        ));
  }
}
