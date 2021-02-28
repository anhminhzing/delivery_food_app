import 'package:delivery_food_app/routes/route_name.dart';
import 'package:delivery_food_app/screens/components_screen.dart';
import 'package:delivery_food_app/screens/profileUser/profileuser_screen.dart';
import 'package:delivery_food_app/screens/sign_in_screen.dart';
import 'package:delivery_food_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerate(RouteSettings setting) {
    // final args = setting.arguments;
    switch (setting.name) {
      case '/':
        return buildRoute(setting: setting, builder: SignInScreen());
      case RouteName.signIn:
        return buildRoute(setting: setting, builder: SignInScreen());
      case RouteName.signUp:
        return buildRoute(setting: setting, builder: SignUpScreen());
      case RouteName.component:
        return buildRoute(setting: setting, builder: ComponentsScreen());
      case RouteName.profileUser:
        return buildRoute(setting: setting, builder: ProfileUserScreen());
      default:
        return _errorBuild();
    }
  }

  static Route buildRoute({RouteSettings setting, Widget builder}) {
    return MaterialPageRoute(
      settings: setting,
      builder: (buildContext) => builder,
    );
  }

  static Route buildRouteDialog({RouteSettings setting, Widget builder}) {
    return MaterialPageRoute(
      settings: setting,
      builder: (buildContext) => builder,
      fullscreenDialog: true,
    );
  }

  static Route _errorBuild() {
    return MaterialPageRoute(
      builder: (buildContext) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
