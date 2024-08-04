import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 4.0,
                    )),
                child: Center(
                    child: Icon(Icons.check, color: Colors.green, size: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Successful!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 2,
              ),
              SizedBox(
                width: 250,
                child: Text(
                    'you have successfully registered in our app and start working in it',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 194, 193, 193))),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        print('logined');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Start Shopping')),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
