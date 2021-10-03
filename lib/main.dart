import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/screens/about_screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: HomePageScreens(),
      routes: {
        AppRoutes.HOME: (context)=> HomePageScreens(),
        AppRoutes.SOBRE_MIM: (context)=> AboutScreen(),
        AppRoutes.PROJETOS: (context)=> WorksScreen(),
      },
    );
  }
}


