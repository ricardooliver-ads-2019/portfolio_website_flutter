import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BigHeader(pagina: "Projetos",),
            ),
          ),

          SliverToBoxAdapter(
            child: Center(
              child: Text("Últimos Projetos", 
                style: GoogleFonts.oswald(
                  color: Definicoes.primaryColor,
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),



          SliverToBoxAdapter(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.asset(AppImages.imgFundoWorks, fit: BoxFit.fill,),
                    width: tela > 1080  ? 1080 : tela * 0.9,
                    height: 700,
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Center(
                    child: Container(
                      child: Image(image: AssetImage(AppImages.imgFundoCarrocellP),fit: BoxFit.fill,),
                    ),
                  ),
                ),
                Center(child: CarrouselSlider()),
              ]
            ),
          ),

          SliverToBoxAdapter(
    
            child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Container(
                    width: tela > 800 ? 790 : tela * 0.9,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: const AutoSizeText(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets",
                      style: TextStyle(color: Colors.white, fontSize: 17),
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
              height: 500,
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