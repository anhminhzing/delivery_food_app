
import 'package:delivery_food_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 50,),
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                 GestureDetector(
                   onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (SignUpScreen()))
                    );
                   },
                   child:  Text(
                     ' Sign up now',
                     style: TextStyle(
                       fontSize: 18,
                       color: Color(0xFFFD6D3B),
                     ),
                   ),
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
              Center(
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 18,
                  ),
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
                          print('Sign in');
                        },
                        child: Container(
                            width: 327,
                            height: 46,
                            child:  Center(
                              child: Text(
                                'SIGN IN',
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
