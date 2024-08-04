import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerc_project/styles/icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 10),
              Center(
                child: Image.asset(
                  appLogo,
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Welcome!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 2,
              ),
              Text('please login or sign up to continue our app',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 194, 193, 193))),
              SizedBox(
                height: 30,
              ),
              Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'john@doe.com',
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: Colors.black,
                        size: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 20,
              ),
              Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: '***********',
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: Colors.black,
                        size: 10,
                      ),
                      // contentPadding: EdgeInsets.all(15),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print('logined');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Login')),
              ),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('or')),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1877F2),
                          foregroundColor: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Continue With Facebook'),
                        ],
                      ))),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.grey[700],
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Continue With Google'),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.apple,
                          color: Colors.grey[700],
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Continue With Apple'),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
