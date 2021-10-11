import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/cards.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/carrousel_slider.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class WorksScreen extends StatefulWidget {
  const WorksScreen({ Key? key }) : super(key: key);

  @override
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      backgroundColor: Definicoes.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Projetos",),
          ),

          SliverToBoxAdapter(
            child: Center(
              child: Text("Apps desenvolvidos por mim", 
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),

          SliverToBoxAdapter(child: Padding(padding: EdgeInsets.only(bottom: 20))),

          SliverToBoxAdapter(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    
                    child: Image(image: AssetImage(AppImages.imgFundoCarrocellP),),
                  ),
                ),
                CarrouselSlider(),
              ]
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: const AutoSizeText(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify, 
                    ),
                  ),
                ),

                Text("Últimos Projetos", 
                  style: TextStyle(fontSize: 25),
                ),

                Padding(padding: EdgeInsets.only(bottom: 20)),                

              ],
            ),
          ),

          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),

              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),

              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
            ],
            
          )
          
        ],
      ),
    );
  }
}