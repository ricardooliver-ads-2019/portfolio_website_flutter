import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/components/buttonC.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';


class ListCardsApps extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final listCardsApps = [
    {'title' : "PayFlow - Login", 'discricao': "Aplicativo pensado para leitura de codigo de barrar e organição dos seus Boletos", 'img': AppImages.imgPayFlowLogin},
    {'title' : "PayFlow - Home", 'discricao': "Aplicativo pensado para leitura de codigo de barrar e organição dos seus Boletos", 'img': AppImages.imgPayFlowHome},    
    //{'title' : "Download-Youtube", 'discricao': "Aplicativo para baixar videos do Youtube Usando a URL do video", 'img': AppImages.imgTelaApp2_0},
    
    
  ];

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
         height: 450,
         width: tela > 1080 ? 1080 : tela * 0.90,
        decoration: BoxDecoration(
        ),
        child: Scrollbar(          
          controller: controller,
          isAlwaysShown: true,
          child: ListView.builder(
            controller: controller,
            itemCount: listCardsApps.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){
              return Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(

                  width: 180,
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(listCardsApps[index]['title'].toString(), 
                        style: GoogleFonts.oswald(
                          color: Definicoes.primaryColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.normal
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
    
                      Container(
                        width: 150,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: AssetImage(listCardsApps[index]['img'].toString()), fit: BoxFit.fill)
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),
    
                      ButtonC(rota: AppRoutes.PROJETOS,),
                      
                    ],
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}