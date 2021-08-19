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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        onChange = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        onChange = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/editable.png',
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 6) {
                          return "password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                          onTap: () => moveToHome(context),
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
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
