
import 'package:delivery_food_app/commons/variables.dart';
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
          left: AppPadding.paddingHorizontal,
          right: AppPadding.paddingHorizontal,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppPadding.paddingVertical,
              ),
             GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child:  Icon(
                 Icons.arrow_back_ios,
                 color: AppColor.black,
               ),
             ),
             AppDistance.bigSize,
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: AppFontSize.bigSize,
                ),
              ),
              AppDistance.smallSize,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your Email and new Password',
                    style:  TextStyle(
                        fontSize: AppFontSize.smallSize,
                        color: AppColor.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'for sign up, or ',
                        style:  TextStyle(
                          fontSize: AppFontSize.smallSize,
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
                            fontSize: AppFontSize.smallSize,
                            color: AppColor.orange,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              AppDistance.smallSize,
              TextField(
                cursorColor: AppColor.neutral1,
                style: TextStyle(
                  fontSize: AppFontSize.smallSize,
                  color: AppColor.neutral1,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.orange,
                        width: 2.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.neutral3,
                        width: 1.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  labelText: 'Email or Phone Number',
                ),
              ),
              AppDistance.smallSize,
              TextField(
                cursorColor: AppColor.neutral1,
                obscureText: true,
                style: TextStyle(
                  fontSize: AppFontSize.smallSize,
                  color: AppColor.neutral1,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.orange,
                        width: 2.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.neutral3,
                        width: 1.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  labelText: 'Password',
                ),
              ),
              AppDistance.smallSize,
              TextField(
                cursorColor: AppColor.neutral1,
                obscureText: true,
                style: TextStyle(
                  fontSize: AppFontSize.smallSize,
                  color: AppColor.neutral1,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.orange,
                        width: 2.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.neutral3,
                        width: 1.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  labelText: 'Confirm Password',
                ),
              ),
             AppDistance.smallSize,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonTheme(
                    minWidth:double.infinity,
                    height: 50,
                    child: RaisedButton(
                        color: AppColor.orange,
                        onPressed: (){
                          print('Sign up');
                        },
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: AppFontSize.smallSize,
                              color: AppColor.white,
                            ),
                          ),
                        )
                    ),
                  ),
                  AppDistance.smallSize,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'By signing up you agree to our ',
                        style: TextStyle(
                          fontSize: AppFontSize.smallSize,
                          color: AppColor.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Terms Condition',
                            style: TextStyle(
                              fontSize: AppFontSize.smallSize,
                              color: AppColor.orange,
                            ),
                          ),
                          Text(
                            ' \&',
                            style: TextStyle(
                                fontSize: AppFontSize.smallSize),
                          ),
                          Text(
                            ' Privacy Policy',
                            style: TextStyle(
                              fontSize: AppFontSize.smallSize,
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  AppDistance.smallSize,
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: AppFontSize.smallSize,
                      color: AppColor.black,
                    ),
                  ),
                  AppDistance.smallSize,
                  Image(
                    width: double.infinity,
                    image: AssetImage('assets/buttons/Facebook2x.png'),
                  ),
                  AppDistance.smallSize,
                  Image(
                    image: AssetImage('assets/buttons/Google2x.png'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
