import 'package:delivery_food_app/commons/variables.dart';
import 'package:delivery_food_app/screens/sign_up_screen.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: AppPadding.paddingVertical,
            left: AppPadding.paddingHorizontal,
            right: AppPadding.paddingHorizontal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColor.black,
                ),
              ),
              AppDistance.bigSize,
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: AppFontSize.bigSize,
                ),
              ),
              AppDistance.smallSize,
              Row(
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      fontSize: AppFontSize.smallSize,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (SignUpScreen())));
                    },
                    child: Text(
                      ' Sign up now',
                      style: TextStyle(
                        fontSize: AppFontSize.smallSize,
                        color: AppColor.orange,
                      ),
                    ),
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
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.neutral3,
                        width: 1.0,
                        style: BorderStyle.solid),
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
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.neutral3,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                  labelText: 'Password',
                ),
              ),
              AppDistance.smallSize,
              Center(
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: AppFontSize.smallSize,
                  ),
                ),
              ),
              AppDistance.smallSize,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 50,
                    child: RaisedButton(
                        color: AppColor.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {
                          print('Sign in');
                        },
                        child: Center(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: AppFontSize.smallSize,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                  AppDistance.smallSize,
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: AppFontSize.smallSize,
                      color: Colors.black,
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
