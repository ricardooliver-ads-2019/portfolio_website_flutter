import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/components/box_logo.dart';
import 'package:portfolio_website_flutter/components/menuC.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';


class SliverAppBarC extends StatelessWidget {
  const SliverAppBarC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Container(
      color: Definicoes.bgDrawerColor,
      //floating: true,
      //elevation: 25,
      //shadowColor: Colors.red,
      //centerTitle: false,
      width: largura,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: BoxLogo(),
          ),
          Container(
          child: largura < 680 
          ? Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },

              icon: Icon(Icons.menu_rounded, size: 32, color: Definicoes.primaryColor,)
            ),
          ) 
          : Row(
            children: [
              MenuC(title: "HOME", routeName: AppRoutes.HOME,),
              Padding(padding: EdgeInsets.only(right: 20)),
              MenuC(title: "SOBRE", routeName: AppRoutes.SOBRE_MIM,),
              Padding(padding: EdgeInsets.only(right: 20)),
              MenuC(title: "PROJETOS", routeName: AppRoutes.PROJETOS,),
              Padding(padding: EdgeInsets.only(right: 20)),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: MenuC(title: "CONTATOS", routeName: AppRoutes.CONTATOS,),
              ),
            ],
          ) 

        )

      ],),
      //leading: SliverToBoxAdapter(child: Container(width: 50, height: 50, color: Colors.red,)),
      

    );
  }
}