
import 'package:delivery_food_app/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 48,
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child:  Icon(
                 Icons.arrow_back_ios,
                 color: Colors.black,
               ),
             ),
              SizedBox(height: 50,),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your Email and new Password',
                    style:  TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'for sign up, or ',
                        style:  TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => (SignInScreen())
                            )
                          );
                        },
                        child: Text(
                          'Already have account?',
                          style:  TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFD6D3B),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email or Phone Number',
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: TextEditingController(),
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: TextEditingController(),
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonTheme(
                    minWidth:double.infinity,
                    height: 47,
                    child: RaisedButton(
                        color: Color(0xFFFD6D3B),
                        onPressed: (){
                          print('Sign up');
                        },
                        child: Container(
                            width: 327,
                            height: 46,
                            child:  Center(
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20,),
                  ButtonTheme(
                    minWidth:double.infinity,
                    height: 47,
                    child: RaisedButton(
                        color: Color(0xFFFD6D3B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        elevation: 0,
                        onPressed: (){
                          print('Facebook');
                        },
                        child: Column(
                          children: [
                            // Icon(Icons.)
                            Text('CONTINUE WITH FACEBOOK')
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  ButtonTheme(
                    minWidth:double.infinity,
                    height: 47,
                    child: RaisedButton(
                        elevation: 0,
                        color: Color(0xFFFD6D3B),
                        onPressed: (){
                          print('Google');
                        },
                        child: Text('CONTINUE WITH GOOGLE')
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
