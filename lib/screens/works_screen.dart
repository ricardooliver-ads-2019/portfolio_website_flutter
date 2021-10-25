import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    var tela = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      backgroundColor: Definicoes.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Projetos",),
          ),

          SliverToBoxAdapter(
            child: Center(
              child: Text("Apps desenvolvidos por mim", 
                style: GoogleFonts.oswald(
                  color: Definicoes.primaryColor,
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: Padding(padding: EdgeInsets.only(bottom: 20))),

          SliverToBoxAdapter(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.asset(AppImages.imgFundoWorks, fit: BoxFit.fill,),
                    width: tela > 800  ? 790 : tela * 0.9,
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

                Text("Últimos Projetos", 
                  style: GoogleFonts.oswald(
                    color: Definicoes.primaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal
                  ),
                ),

                Padding(padding: EdgeInsets.only(bottom: 20)),                

              ],
            ),
          ),

          SliverGrid.count(
            childAspectRatio: tela > 600 ? 1 : 0.5 ,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: tela > 600 ? 3 : 2 ,
            children: [
              
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
          
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
          
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
          
              Image(image: AssetImage(AppImages.imgPerson))
            ],
            
          ),

          

          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),

          SliverGrid.extent(
            maxCrossAxisExtent: 400, 
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0,
            children: [
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),

              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
              CardsC(color: Colors.black12, title: "Titulo do card", description: "Descrição dos cardos:kkkkkkaskfkSFGKskfsFOPsfSPRRWPojqgjjjag~gjkrtjgjrtjg´s~gjsjdgojaewõyaergjgpgadrj~pgjaap~djghpjdrpgjarsdg~pjasgasg[p[p]jqjg"),
            ],
          ),


          SliverFixedExtentList(delegate: SliverChildListDelegate(
              
            [

              Container(
                margin: EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.red)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: ListView(

                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: tela * 0.30,
                        color: Colors.red,
                        child: CarrouselSlider(),
                      ),
                      Container(
                        width: tela * 0.30,
                        color: Colors.blue,
                        child: CarrouselSlider(),
                      ),
                      Container(
                        width: tela * 0.30,
                        color: Colors.green,
                        child: CarrouselSlider(),
                      ),
                      
                    ],
                  ),
                ),
              )

            ]
          ), itemExtent: 500),





        ],
      ),
    );
  }
}