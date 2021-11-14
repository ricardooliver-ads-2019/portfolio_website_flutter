import 'package:animated_card/animated_card.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/components/cards_AppsWebs.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/list_cardsApps.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/carrousel_slider.dart';
import 'package:portfolio_website_flutter/utils/list_cardsAppsWebs.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';


class WorksScreen extends StatefulWidget {
  const WorksScreen({ Key? key }) : super(key: key);
  
  @override
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      backgroundColor: Definicoes.bgColor,
      body: 
      Theme(data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Definicoes.threeColor), 
        )
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: AnimatedCard(
                      direction: AnimatedCardDirection.top,
                      duration: Duration(seconds: 2),
                      child: Center(child: Image.asset(AppImages.imgFundoWorks, fit: BoxFit.fill,))
                    ),
                    width: tela > 1080  ? 1080 : tela * 0.9,
                    height: 600,
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Center(
                    child: Container(
                      child: AnimatedCard(
                        direction: AnimatedCardDirection.bottom,
                        duration: Duration(seconds: 2),
                        child: Center(child: Image(image: AssetImage(AppImages.imgFundoCarrocellP),fit: BoxFit.fill,))
                      ),
                    ),
                  ),
                ),
                AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  duration: Duration(seconds: 2),
                  child: Center(child: CarrouselSlider())
                ),
              ]
            ),
          ),

          SliverToBoxAdapter(
    
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    width: tela > 800 ? 790 : tela * 0.9,
                    child: const AutoSizeText(
                      "Conheça um pouco do resultado do meus estudos, você encontrará aplicativos desenvolvidos com Flutter, Dart e Firebase e também encontrará Site, Sistemas Webs e Também algumas telas webs criadas apenas para prática.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.justify, 
                    ),
                  ),
                ),        
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Center(
              child: Text("Aplicativos", 
                style: GoogleFonts.oswald(
                  color: Definicoes.primaryColor,
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              height: 450,
              decoration: BoxDecoration(
            ),
              child: ListCardsApps(),
            )
          ),

          SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.only(bottom: 40),)
          ),

          SliverToBoxAdapter(
            child: Center(
              child: Text("Aplicações Webs", 
                style: GoogleFonts.oswald(
                  color: Definicoes.primaryColor,
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.only(bottom: 20),)
          ),


          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 0,
              childAspectRatio: 1,
              mainAxisExtent: 350,

            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: cardsAppsWebs(img: ListCardsAppsWebs().cardsAppsWebsList[index].img, title: ListCardsAppsWebs().cardsAppsWebsList[index].title, linkRota: ListCardsAppsWebs().cardsAppsWebsList[index].rota.toString()),
                );
              },
              childCount: ListCardsAppsWebs().cardsAppsWebsList.length,
            ),
          ),
      
        ],
      ),)
    );
  }
}