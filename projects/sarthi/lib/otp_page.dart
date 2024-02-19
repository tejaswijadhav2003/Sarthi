import 'package:flutter/material.dart';
class OtpPage extends StatelessWidget{
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ],
              )
          ),
          
          child: Padding(
            padding:  const EdgeInsets.only(top: 400.0, left: 50, right:50 ),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  const Text('OTP Verification',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text('We have sent an OTP on given number :)',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                   TextField(
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: Text('Enter Pin',style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )
                        )
                    ),

                  ),

                  SizedBox(height: 70,),
                  ElevatedButton(

                      onPressed: (){
                        print('huii');
                        print(otpController);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff10CF6E3),
                        minimumSize: Size(300, 55),
                      ),
                      child: const Text('> Next',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )

                  )

                ],
              ),
            ),



          )

      ),

    );

  }

}

class OTPTextField {
}