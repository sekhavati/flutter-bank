import 'package:flutter/material.dart';
import 'package:flutterbank/screens/home.dart';
import 'package:flutterbank/screens/account-overview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bank',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.kRouteId,
      routes: {
        HomeScreen.kRouteId: (context) => HomeScreen(),
        AccountOverviewScreen.kRouteId: (context) => AccountOverviewScreen()
      },
    );
  }
}
