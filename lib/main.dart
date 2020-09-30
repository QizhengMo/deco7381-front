import 'package:finance/auth/Signup.dart';
import 'package:finance/pages/MainNavi.dart';
import 'package:finance/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:finance/auth/Login.dart';

import 'package:provider/provider.dart';
import 'model/authModel.dart';


void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/main': (context) => MainNavigation(),
      },
    );
  }
}

