import 'package:flutter/material.dart';
import 'package:project1/Utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool onChange = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/enter.png',
                fit: BoxFit.contain,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Text("welcome $name",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                        onTap: () async {
                          setState(() {
                            onChange = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 45,
                          width: onChange ? 50 : 130,
                          alignment: Alignment.center,
                          child: onChange
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                          decoration: BoxDecoration(
                            shape:
                                onChange ? BoxShape.circle : BoxShape.rectangle,
                            color: Colors.red,
                            // borderRadius: BorderRadius.circular(8)),
                          ),
                        )
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //   },
                        //   child: Text("login"),
                        //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
