import 'package:delivery_food_app/commons/components/input_textfield.dart';
import 'package:delivery_food_app/commons/variables.dart';
import 'package:delivery_food_app/routes/route_name.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final double smallVerticalSpace = MediaQuery.of(context).size.height * 0.02;
    final double mediumVerticalSpace =
        MediaQuery.of(context).size.height * 0.03;
    final double bigVerticalSpace = MediaQuery.of(context).size.height * 0.08;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          padding: EdgeInsets.only(
            top: bigVerticalSpace,
            left: AppPadding.paddingHorizontal,
            right: AppPadding.paddingHorizontal,
          ),
          child: SingleChildScrollView(
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
                    color: AppColor.neutral1,
                  ),
                ),
                SizedBox(
                  height: bigVerticalSpace,
                ),
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: smallVerticalSpace),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your Email and new Password',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Row(
                      children: [
                        Text(
                          'for sign up, or ',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(RouteName.signIn);
                          },
                          child: Text(
                            'Already have account?',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: smallVerticalSpace),
                AppTextField(
                  controller: TextEditingController(),
                  label: 'Email or Phone Number',
                ),
                SizedBox(height: smallVerticalSpace),
                AppTextField(
                  controller: TextEditingController(),
                  label: 'Password',
                  isPassword: true,
                ),
                SizedBox(height: smallVerticalSpace),
                AppTextField(
                  controller: TextEditingController(),
                  label: 'Confirm Password',
                  isPassword: true,
                ),
                SizedBox(height: mediumVerticalSpace),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                      elevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      onPressed: () {
                        print('Sign up');
                      },
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: Theme.of(context).accentTextTheme.button
                            .copyWith(color: AppColor.white),
                        ),
                      ),
                    ),
                    SizedBox(height: mediumVerticalSpace),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'By signing up you agree to our ',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms Condition',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            Text(
                              ' \&',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            Text(
                              ' Privacy Policy',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToPage(String screen) {
    Navigator.pushNamed(context, screen);
  }
}
