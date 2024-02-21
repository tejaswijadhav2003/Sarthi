import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sarthi/login_page.dart';
import 'package:sarthi/homepage.dart';

class OtpPage extends StatefulWidget {
  String verificationId;
  OtpPage({super.key, required this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Screen"),
        centerTitle: true,
      ),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'We have sent an OTP on given number :)',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal),
                  ),
                  TextField(
                    controller: otpController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Enter the OTP",
                        label: Text('Enter Pin',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ))),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        try {
                          PhoneAuthCredential credential =
                              await PhoneAuthProvider.credential(
                                  verificationId: widget.verificationId,
                                  smsCode: otpController.text.toString());
                          FirebaseAuth.instance
                              .signInWithCredential(credential)
                              .then((value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          title: '',
                                        )));
                          });
                        } catch (ex) {
                          print(ex);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff10CF6E3),
                        minimumSize: Size(300, 55),
                      ),
                      child: const Text(
                        '> Next',
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

class OTPTextField {}
