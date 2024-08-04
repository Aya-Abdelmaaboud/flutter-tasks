import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerc_project/styles/icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              Text('Sign UP',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 2,
              ),
              Text('create a new account',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 194, 193, 193))),
              SizedBox(
                height: 30,
              ),
              Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'John',
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: Colors.black,
                        size: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 10,
              ),
              Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'john@doe.com',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 10,
              ),
              Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: '***********',
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.eyeSlash,
                        color: Colors.black,
                        size: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 10,
              ),
              Text('Confirm Password',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                  decoration: InputDecoration(
                      hintText: '***********',
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.eyeSlash,
                        color: Colors.black,
                        size: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: .5),
                      ))),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  Expanded(
                    child: Wrap(
                      children: [
                        Text(
                          'by creating an account you have to agree with our terms and conditions',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
                    child: Text('Sign Up')),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
