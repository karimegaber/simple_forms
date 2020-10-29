import 'package:flutter/material.dart';
import 'package:karimmall/homepage.dart';
import 'package:karimmall/login.dart';
import 'package:karimmall/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karim Mall',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/signup': (context) => Signup(),
        '/login': (context) => Login(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 50),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/welcomepageimage.png"),
                      Container(
                          padding: EdgeInsets.fromLTRB(190, 0, 0, 0),
                          child: Image.asset("assets/images/MallLogo.png")),
                    ],
                  ),
                  Text(
                    "WELCOME",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                              color: Colors.indigoAccent,
                              offset: Offset(3, 5),
                              blurRadius: 10),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "KARIM MALL, ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SHOPPING BECOME MORE EASIER.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.indigoAccent,
              padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
              child: Text(
                "GET STARTED",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/signup'
                );
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/*
  bool pass_visibility = false;
  String error_message = "";

  var pass_controller = TextEditingController();
  */
/*
Container(
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

              //Username TextField
              Container(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.indigo,
                    )),
                    contentPadding: EdgeInsets.all(10),
                    labelText: "Username",
                    helperText: "* ex: example@company.com",
                  ),
                ),
              ),

              //Password TextField
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
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

              //Error Message.

              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "${error_message}",
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
                    pass_controller.text.length >= 6
                        ? {
                            Navigator.of(context).pushNamed('/homepage'),
                            error_message = ""
                          }
                        : error_message = "PASSWORD IS LESS THAN 6 DIGITS!";
                  });
                },
              ),
            ],
          ),
        ),
 */
