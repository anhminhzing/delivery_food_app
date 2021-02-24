import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/commons/components/input_textfield.dart';
import 'package:delivery_food_app/commons/variables.dart';
import 'package:delivery_food_app/routes/route_name.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        child: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.only(
              top: bigVerticalSpace,
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
                    color: AppColor.neutral1,
                  ),
                ),
                SizedBox(height: bigVerticalSpace),
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: smallVerticalSpace),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    GestureDetector(
                      onTap: () => navigateToPage(RouteName.signUp),
                      child: Text(
                        ' Sign up now',
                        style: Theme.of(context).primaryTextTheme.bodyText2,
                      ),
                    )
                  ],
                ),
                SizedBox(height: smallVerticalSpace),
                _buildTextFieldContainer(
                  context,
                  smallVerticalSpace,
                  mediumVerticalSpace,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldContainer(
    BuildContext context,
    double smallVerticalSpace,
    double mediumVerticalSpace,
  ) {
    return Column(
      children: [
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
        Center(
          child: Text(
            'Forgot Password ?',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        SizedBox(height: mediumVerticalSpace),
        RaisedButton(
          onPressed: () {
            print('Sign in');
          },
          child: Center(
            child: Text(
              'SIGN IN',
              style: Theme.of(context).accentTextTheme.button,
            ),
          ),
        ),
        SizedBox(height: mediumVerticalSpace),
        Center(
          child: Text(
            'OR',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        SizedBox(height: mediumVerticalSpace),
        GestureDetector(
          onTap: () {},
          child: Image(
            image: AssetImage(UIData.facebook),
          ),
        ),
        SizedBox(height: smallVerticalSpace),
        GestureDetector(
            onTap: () {},
            child: Image(
              image: AssetImage(UIData.google),
            )),
      ],
    );
  }

  void navigateToPage(String screen) {
    Navigator.pushNamed(context, screen);
  }
}
