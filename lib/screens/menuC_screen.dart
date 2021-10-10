import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/app_routes.dart';

class MenuCScreen extends StatelessWidget {
  const MenuCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 15),
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
                icon: Icon(Icons.arrow_back, size: 30,)
              ),
            ),

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
}