import 'package:delivery_food_app/routes/main_route.dart';
import 'package:delivery_food_app/routes/route_name.dart';
import 'package:delivery_food_app/theme/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: DataTheme.lightTheme,
      home: MyHomePage(),
      initialRoute: '/',
      onGenerateRoute: AppRoute.onGenerate,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Food App'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Sign in'),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.signIn);
              },
            ),
            RaisedButton(
              child: Text('Sign up'),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.signUp);
              },
            ),
            RaisedButton(
              child: Text('Components'),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.component);
              },
            ),
            // RaisedButton(
            //   child: Text('Navbar'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => (NavbarScreen())),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
