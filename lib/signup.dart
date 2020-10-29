import 'package:flutter/material.dart';

bool email_validator (String email)
{
  for (int i = 0; i < email.length; i++)
    {
      if (email[i] == '@')
        {
          return true;
        }
    }
  return false;
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool pass_visibility = false;

  String user_gender = 'MALE';
  String fullname_error_message = "";
  String email_error_message = "";
  String pass_error_message = "";

  var fullname_controller = TextEditingController();
  var email_controller = TextEditingController();
  var pass_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Avatar
              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.asset(
                    "assets/images/signupavatar.png",
                    width: 200,
                    height: 200,
                  )),

              //FULL NAME
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                child: Column(
                  children: [
                    TextField(
                      controller: fullname_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixText: "MR / MRS  ",
                        prefixStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: "  FULL NAME",
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        helperText: "  ex: Karim E. Gaber",
                      ),
                      autocorrect: false,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(fullname_error_message,style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),

              //Email
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    TextField(
                      controller: email_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "  EMAIL ADDRESS",
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        helperText: "  ex: example@company.com",
                      ),
                      autocorrect: false,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(email_error_message,style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),

              //Password
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    TextField(
                      controller: pass_controller,
                      obscureText: !pass_visibility,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: IconButton(
                          icon: pass_visibility
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              pass_visibility = !pass_visibility;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "  PASSWORD",
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        helperText: "  must be more than 6 digits.",
                      ),
                      autocorrect: false,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(pass_error_message,style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),

              //Gender
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(40, 0, 30, 10),
                child: DropdownButton(
                  dropdownColor: Colors.white70,
                  value: user_gender,
                  isExpanded: true,
                  icon: Icon(
                    Icons.arrow_drop_down,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String Gender) {
                    setState(() {
                      user_gender = Gender;
                    });
                  },
                  items: <String>['MALE', 'FEMALE']
                      .map<DropdownMenuItem<String>>((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                ),
              ),


              //SignUp
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 70),
                child: RaisedButton(
                  color: Colors.indigoAccent,
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {

                    if ( ( pass_controller.text.length >= 6 && fullname_controller.text != null
                    && email_controller.text != null))
                      {
                        setState(() {
                          if (email_validator(email_controller.text))
                          {

                            Navigator.of(context).pushNamed('/login', arguments: {
                              'fullname': fullname_controller.text,
                              'email': email_controller.text,
                              'password': pass_controller.text,
                              'gender': user_gender,
                            });
                            email_error_message = "";
                          }
                          else
                          {
                            fullname_error_message = "";
                            pass_error_message = "";
                            email_error_message = "ENTER RIGHT EMAIL ADDRESS.";
                          }
                        });
                      }
                    else
                      {
                        setState(() {

                          if (fullname_controller.text == "")
                          {
                            fullname_error_message = "FULLNAME can't be EMPTY!";
                          }

                          if (email_controller.text == "")
                          {
                            email_error_message = "EMAIL can't be EMPTY!";
                          }

                          if (pass_controller.text.length < 6)
                            {
                              pass_error_message = "PASSWORD LESS THAN 6 DIGITS.";
                            }

                        });
                      }


                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
