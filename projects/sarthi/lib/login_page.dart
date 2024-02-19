import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 400.0, left: 50, right: 50),
            child: Form(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(

                    keyboardType: TextInputType.text,
                    controller: nameController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                        label: Text('Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ))),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                        label: Text('Phone Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ))),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(phoneController);
                        print('Hiieeeee firebase add karde');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff10CF6E3),
                        minimumSize: Size(300, 55),
                      ),
                      child: const Text(
                        'Send OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
