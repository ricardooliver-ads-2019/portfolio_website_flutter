import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/components/buttonC.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';


class ListCardsApps extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final Map<String, dynamic> app;

  ListCardsApps({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          child: Text(app['title'], 
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.oswald(
              color: Definicoes.primaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.normal
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          width: 150,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.asset(app['fotos'][0], fit: BoxFit.fill),
        ),

        SizedBox(
          height: 25,
        ),

        ButtonC(app: app,),
        
      ],
    );
  }
}