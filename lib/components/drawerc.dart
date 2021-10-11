import 'package:flutter/material.dart';

import '../app_routes.dart';


class DrawerC extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Color.fromARGB(10, 55, 200, 1),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.HOME);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Home", style: TextStyle(fontSize: 20),),
            ),
          ),
          Divider(color: Colors.black12,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.SOBRE_MIM);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Sobre-Mim", style: TextStyle(fontSize: 20),),
            ),
          ),
          Divider(color: Colors.black12,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.PROJETOS);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Projetos", style: TextStyle(fontSize: 20),),
            ),
          ),
          Divider(color: Colors.black12,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.CONTATOS);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Contatos", style: TextStyle(fontSize: 20),),
            ),
          ),
        ]
      ),
    ),
  );
}