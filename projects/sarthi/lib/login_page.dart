import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff191526),
                Color(0xff191526),
              ],
              )
          ),



          child: Padding(
            padding:  EdgeInsets.only(top: 400.0, left: 50, right:50 ),
            child: Form(
              child: Column(
                children: <Widget>[

                  Text('Login',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        label: Text('Name',style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )
                        )
                    ),

                  ),
                  TextField(
                    decoration: InputDecoration(
                        label: Text('Phone Number',style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )
                        )
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(

                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff10CF6E3),
                              Color(0xff10CF6E3),
                            ]
                        )
                    ),
                    child: Center(child: Text('Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),

                    ),),
                  )
                ],
              ),
            ),


          )
      ),
    );
  }
}