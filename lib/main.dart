// ignore: invalid_language_version_override
// @dart=2.9;
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/screens/about_screen.dart';
import 'package:portfolio_website_flutter/screens/contacts_page_screen.dart';
import 'package:portfolio_website_flutter/screens/home_page_screen.dart';
import 'package:portfolio_website_flutter/screens/works_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageScreens(),
      routes: {
        AppRoutes.HOME: (context)=> HomePageScreens(),
        AppRoutes.SOBRE_MIM: (context)=> AboutScreen(),
        AppRoutes.PROJETOS: (context)=> WorksScreen(),
        AppRoutes.CONTATOS: (context)=> ContactsPageScreen(),
      },
    );
  }
}


