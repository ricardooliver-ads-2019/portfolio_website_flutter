import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/components/menuC.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class SliverAppBarC extends StatelessWidget {
  const SliverAppBarC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return SliverAppBar(
      backgroundColor: Definicoes.menuColor,
      floating: true,
      //elevation: 25,
      //shadowColor: Colors.red,
      centerTitle: false,
      title: Text("Ricardo Oliveira", 
        style: TextStyle(
          color: Definicoes.logoColor,
          fontSize: 28,
          fontWeight: FontWeight.w400,
          letterSpacing: -1.2,

        ),
      ),

      actions: [
        Container(
          child: largura < 680 
          ? Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.MENUMOBILE);
              }, 
              icon: Icon(Icons.menu_rounded, size: 25, color: Colors.black45,)
            ),
          ) 
          : Row(
            children: [
              MenuC(title: "Home", routeName: AppRoutes.HOME,),
              VerticalDivider(),
              MenuC(title: "Sobre", routeName: AppRoutes.SOBRE_MIM,),
              VerticalDivider(),
              MenuC(title: "Projetos", routeName: AppRoutes.PROJETOS,),
              VerticalDivider(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: MenuC(title: "Contatos", routeName: AppRoutes.CONTATOS,),
              ),
            ],
          ) 

        )
      ],

    );
  }
}