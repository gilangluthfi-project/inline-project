import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/inputfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

//Global Key
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
var _passKey = GlobalKey<FormFieldState>();

class _RegisterState extends State<Register> {
  //text controller
  TextEditingController userNameTextConroller = new TextEditingController();
  TextEditingController userEmailTextConroller = new TextEditingController();
  TextEditingController userPasswordTextConroller = new TextEditingController();
  TextEditingController userRetypePasswordTextConroller =
      new TextEditingController();

  //error variable
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Image.asset(
                          'assets/images/inline-logo.png',
                          width: 150.0,
                          height: 150.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Create Account',
                              style: GoogleFonts.openSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: myBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              'Please create your account',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: myDarkGreyColor),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  primaryInputField(
                                    label: "Name",
                                    hintText: "input your name",
                                    keyboardType: TextInputType.text,
                                    controllerName: userNameTextConroller,
                                    valueStatus: (String value) {
                                      if (value.isEmpty) {
                                        return 'Name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                  primaryInputField(
                                    label: "Email",
                                    hintText: "your@email.com",
                                    keyboardType: TextInputType.emailAddress,
                                    controllerName: userEmailTextConroller,
                                    valueStatus: (String value) {
                                      if (value.isEmpty) {
                                        return 'Email is required';
                                      }
                                      if (!RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                        return 'Please input a valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                  primaryInputField(
                                      formFieldKey: _passKey,
                                      label: "Password",
                                      hintText: "enter your password here",
                                      obscureText: true,
                                      controllerName: userPasswordTextConroller,
                                      valueStatus: (value) {
                                        if (value.isEmpty)
                                          return 'Please Enter password';
                                        if (value.length < 8)
                                          return 'Password should be more than 8 characters';
                                        return null;
                                      }),
                                  primaryInputField(
                                    label: "Retype Password",
                                    hintText: "retype your password here",
                                    obscureText: true,
                                    controllerName:
                                        userRetypePasswordTextConroller,
                                    valueStatus: (confirmPassword) {
                                      if (confirmPassword.isEmpty)
                                        return 'Enter confirm password';
                                      var password =
                                          _passKey.currentState.value;
                                      if (!equalsIgnoreCase(
                                          confirmPassword, password))
                                        return 'Confirm Password invalid';
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Text(
                                      error,
                                      style: GoogleFonts.openSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red[600]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 56,
                                    child: FlatButton(
                                      color: myPrimaryColor,
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          setState(() {
                                            return;
                                          });
                                        }
                                      },
                                      child: Text(
                                        "Sign up",
                                        style: GoogleFonts.openSans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: myWhiteColor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Already have an account?',
                                          style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: myBlackColor),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'Login',
                                            style: GoogleFonts.openSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: myPrimaryColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
