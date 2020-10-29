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

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool pass_visibility = false;

  String email_error_message = "";
  String password_error_message = "";

  var pass_controller = TextEditingController();
  var email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white10,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Stack(
                children: [
                  Image.asset("assets/images/pic1.png"),
                ],
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),

              //Email TextField
              Container(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 10),
                child: TextField(
                  controller: email_controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_pin),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.indigo,
                    )),
                    contentPadding: EdgeInsets.all(10),
                    labelText: "Email",
                    helperText: "* ex: example@company.com",
                  ),
                ),
              ),
              //Email Error Message
              Text(
                "${email_error_message}",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.redAccent,
                ),
              ),

              //Password TextField
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
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
                    errorBorder: InputBorder.none,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.indigo,
                    )),
                    contentPadding: EdgeInsets.all(10),
                    labelText: "Password",
                    helperText: "* must be more than 6 digits.",
                  ),
                ),
              ),
              //Password Error Message
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "${password_error_message}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.redAccent,
                  ),
                ),
              ),

              RaisedButton(
                color: Colors.indigoAccent,
                padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  setState(() {

                    if ( pass_controller.text.length < 6 )
                    {
                      setState(() {
                        password_error_message = "PASSWORD LESS THAN 6 DIGITS.";
                      });
                    }
                    else
                      {
                        setState(() {
                          password_error_message = "";
                        });
                      }

                    if (email_validator(email_controller.text))
                      {
                        setState(() {
                          email_error_message = "";
                          Navigator.of(context).pushNamed('/homepage');
                        });
                      }
                    else
                      {
                        setState(() {
                          email_error_message = "Email is incorrect.";
                        });
                      }

                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
