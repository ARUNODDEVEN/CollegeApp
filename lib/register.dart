import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:form_field_validator/form_field_validator.dart';

class myregister extends StatefulWidget {
  const myregister({Key? key}) : super(key: key);

  @override
  State<myregister> createState() => _myregisterState();
}

class _myregisterState extends State<myregister> {


   
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
      print("Ok");
    } else {
      print("Error");
    }
  }
   String email='';
    String password='';
      String name='';
    String collegerollno='';
     
  @override

  tf(name,i,ot,rvet,rvlv, int num) {
    return TextFormField(
      obscureText: ot,

      
      style: TextStyle(color: Colors.black,backgroundColor: Colors.grey.shade300),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 190, 69, 69),
            width: 4.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 190, 69, 69), width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        fillColor: Colors.grey.shade300,
        filled: true,
        labelText: name,
        labelStyle: TextStyle(color: Color.fromARGB(255, 14, 20, 80),fontWeight: FontWeight.bold),
        
        
        prefixIcon: Icon(i,
         
          color: Color.fromARGB(255, 190, 69, 69),
        ),
        prefixIconColor: Color.fromARGB(255, 190, 69, 69),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
       validator: MultiValidator([
                            RequiredValidator(
                              errorText: rvet,
                            ),
                            MinLengthValidator(num,
                                errorText: rvlv,
                                )
                          ])
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 20, 80),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 95),
              child: Text(
                "Register",
                style: GoogleFonts.anton(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 90),
              child: Text(
                "Register",
                style: GoogleFonts.anton(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 190, 69, 69),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    right: 35,
                    left: 30),
                    child:Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formkey,
                child: Column(
                  children: [
                    tf('Name',Icons.person,false,"Enter Name","",0),
                    SizedBox(
                      height: 10,
                    ),
                    tf('College Roll no',Icons.people_rounded,false,"Enter College Roll No","Incorrect Roll No",6),
                    SizedBox(
                      height: 10,
                    ),
                     tf("Mobile No",Icons.mobile_friendly,false,"Enter Mobile No","Incorrect No",10),
                      SizedBox(
                      height: 10,
                    ),

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
                        labelStyle: TextStyle(color: Color.fromARGB(255, 14, 20, 80),fontWeight: FontWeight.bold,backgroundColor: Colors.grey.shade300),
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
                              errorText: " Enter Email",
                            ),
                          
                                   EmailValidator(errorText: "Enter valid Email"),
                                
                                
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    tf('Password',Icons.enhanced_encryption_sharp,true,"Enter PassWord","More than Six Characters",0),
                    SizedBox(
                      height: 12,
                    ),
                   
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: validate,
                        
                        
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade300),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 190, 69, 69),
                            primary: Color.fromARGB(255, 0, 0, 0)),
                      ),
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
