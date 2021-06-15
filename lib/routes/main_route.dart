import 'package:delivery_food_app/routes/route_name.dart';
import 'package:delivery_food_app/screens/categories/categories_screen.dart';
import 'package:delivery_food_app/screens/components_screen.dart';
import 'package:delivery_food_app/screens/home/home_screen.dart';
import 'package:delivery_food_app/screens/navigation/main_navigation_page.dart';
import 'package:delivery_food_app/screens/profile/profile_screen.dart';
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
      case RouteName.home:
        return buildRoute(setting: setting, builder: HomeScreen());
      case RouteName.mainNavigationTest:
        return buildRoute(setting: setting, builder: MainNavigationPage());
      case RouteName.categories:
        return buildRoute(setting: setting, builder: CategoriesScreen());
      case RouteName.profile:
        return buildRoute(setting: setting, builder: ProfileScreen());
      default:
        return _errorBuild();
    }
  }

  static Route buildRouteScreen1(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.home:
        return buildRoute(builder: HomeScreen(), setting: setting);
        break;
      default:
        return buildRoute(builder: HomeScreen(), setting: setting);
    }
  }

  static Route buildRouteScreen2(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.home:
        return buildRoute(builder: ProfileUserScreen(), setting: setting);
        break;
      default:
        return buildRoute(builder: HomeScreen(), setting: setting);
    }
  }

  static Route buildRouteScreen3(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.home:
        return buildRoute(builder: ComponentsScreen(), setting: setting);
        break;
      default:
        return buildRoute(builder: ComponentsScreen(), setting: setting);
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
