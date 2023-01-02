import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_10/register.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:form_field_validator/form_field_validator.dart';

class mylogin extends StatefulWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  State<mylogin> createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
      print("Ok");
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 20, 70),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 26, top: 135),
              child: Text(
                "D.A.V",
                style: GoogleFonts.anton(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 130),
              child: Text(
                "D.A.V",
                style: GoogleFonts.anton(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 190, 69, 69),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 26, top: 205),
              child: Text(
                "College",
                style: GoogleFonts.anton(fontSize: 81, color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 29, top: 200),
              child: Text(
                "College",
                style: GoogleFonts.anton(
                  fontSize: 80,
                  color: Color.fromARGB(255, 190, 69, 69),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 35,
                    left: 30),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 190, 69, 69),
                                width: 4.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 190, 69, 69),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 14, 20, 80),
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.grey.shade300),
                            hintText: "example@gmail.com",
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: Color.fromARGB(255, 190, 69, 69),
                            ),
                            prefixIconColor: Color.fromARGB(255, 190, 69, 69),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: " Enter Email ",
                            ),
                            EmailValidator(errorText: "Enter valid Email"),
                          ])

                          // (val) {
                          //   if (val!.isEmpty) {
                          //     return "required";
                          //   } else if (val.length < 6) {
                          //     return "At least 6 char";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 190, 69, 69),
                                  width: 4.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 190, 69, 69),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 190, 69, 69),
                            ),
                            
                            // suffixIcon: Icon(
                            //   Icons.remove_red_eye,
                            
                            
                            // ),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 14, 20, 70),
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.grey.shade300),
                            hintText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: " Enter Password",
                            ),
                            MinLengthValidator(6,
                                errorText: "More than 6 characters")
                          ])),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width:  double.infinity,
                        child: TextButton(
                          onPressed: validate,
                          
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade300),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 190, 69, 69),
                              primary: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "If you don't have account\t",
                            style: TextStyle(
                              color: Color.fromARGB(255, 190, 69, 69),
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return myregister();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
