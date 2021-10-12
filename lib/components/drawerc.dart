import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import '../app_routes.dart';


class DrawerC extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Definicoes.bgDrawerColor,
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.HOME);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("HOME", 
                  style: GoogleFonts.oswald(
                    color: Definicoes.twoColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Divider(color: Definicoes.primaryColor,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.SOBRE_MIM);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("SOBRE", 
                  style: GoogleFonts.oswald(
                    color: Definicoes.twoColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Divider(color: Definicoes.primaryColor,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.PROJETOS);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("PROJETOS", 
                  style: GoogleFonts.oswald(
                    color: Definicoes.twoColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Divider(color: Definicoes.primaryColor,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.CONTATOS);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("CONTATOS",
                 style: GoogleFonts.oswald(
                    color: Definicoes.twoColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
    ),
  );
}