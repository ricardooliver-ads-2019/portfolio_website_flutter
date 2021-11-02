import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/box_skills.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/formacao.dart';
import 'package:portfolio_website_flutter/components/my_card_botton.dart';
import 'package:portfolio_website_flutter/components/my_card_top.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/listSoftSkills.dart';
import 'package:portfolio_website_flutter/utils/list_skills.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slimy_card/slimy_card.dart';
import 'package:styled_text/styled_text.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: 
      Theme(data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Definicoes.threeColor), 
        )
      ),
      child:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Sobre Mim",),
          ),
          SliverToBoxAdapter(
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children:[
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: 270,
                    child: SlimyCard(
                      color: Colors.white,
                      width: 270,
                      topCardHeight: 400,
                      bottomCardHeight: 150,
                      topCardWidget: MyCardTop(),
                      bottomCardWidget: MyCardBotton(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: tela > 830 ? MediaQuery.of(context).size.width * 0.6 : MediaQuery.of(context).size.width * 0.90, 
                    child: Column(
                      children: [
                        Container(
                          width:  MediaQuery.of(context).size.width * 0.90,
                          child: Wrap(
                            children: [
                              StyledText(
                                text: '<bold><h1>Olá! Eu sou o Ricardo Oliveira,</h1></bold>',
                                tags: {
                                  'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.normal)),
                                  'h1': StyledTextTag(
                                    style: GoogleFonts.oswald(
                                      color: Definicoes.primaryColor,
                                      fontSize: 42.0,
                                      fontWeight: FontWeight.normal),
                                  )
                                },
                              ),
                              const AutoSizeText( 
                                """tenho 28 anos, estou cursando Analise e desenvolvimento de sistemas pelo IFRO, trabalho atualmente como vigilante patrimonial, onde graças ao meu horário de trabalho por escala, (12/36), consigo ter uma boa disciplina de estudos regulares, e estou em busca de uma oportunidade de estágio como desenvolvedor de software, pois deis do início da faculdade sonho em trabalhar como desenvolvedor de sistemas, mais especificamente com desenvolvimento mobile, apesar da minha pouca experiencia nessa área, sei que com minha dedicação e força de vontade posso e vou sim me tornar um excelente desenvolvedor.""",
                                style: TextStyle(color: Colors.white, fontSize: 17),
                                textAlign: TextAlign.justify, 
                              ),
                            ],
                          ),
                        ),
                        
                        Padding(padding: EdgeInsets.symmetric(vertical: 10)),

                        Formacao(),
                      ],
                    ),
                  ),
                ),  
              ],
            ),
          ),


          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),

                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Soft Skills',
                        textStyle: GoogleFonts.oswald(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                        colors: Definicoes.colorizeColors,
                      ),
                    ],
                    repeatForever: true,

                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: tela > 600 ? 450 : MediaQuery.of(context).size.width * 0.9 ,
                      child: Column(
                        children: ListSoftSkill().softSkillsList.map(
                          (soft) => Container(
                            margin: EdgeInsets.only(bottom: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: soft.percentage,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    alignment: Alignment.centerLeft,
                                    height: 38.0,
                                    child: Text(soft.skill, 
                                      style: GoogleFonts.oswald(
                                        color: Definicoes.primaryColor,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  // remaining (blank part)
                                  flex: 100 - soft.percentage,
                                  child: Divider(
                                    color: Definicoes.threeColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "${soft.percentage}%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                      ),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 20)),

                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Hard Skills',
                        textStyle: GoogleFonts.oswald(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                        colors: Definicoes.colorizeColors,
                      ),
                    ],
                    repeatForever: true,

                  ),
                ),
          
                //Cart Skills FRONT-END
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  direction: Axis.horizontal,
                  children:[
                    BoxSkills(
                      title: 'Front-End', 
                      lista: ListSkills.listFrontEnd,
                      //color: Colors.white30,
                      color: Definicoes.bgColor,
                      colorProgress: Definicoes.primaryColor,
                    ),

                    
                    if (tela < 701) ...[
                      SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                      )
                    ]else ...[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5))
                      ],
                                          
                    BoxSkills(
                      title: 'Back-End', 
                      lista: ListSkills.listBackEnd,
                      color: Definicoes.bgColor, 
                      colorProgress: Definicoes.threeColor,
                    ),

                    if (tela < 701) ...[
                      SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                      )
                    ]else ...[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5))
                      ],

                    
                    BoxSkills(
                      title: 'Diferenciais', 
                      lista: ListSkills.listDiferenciais,
                      color: Definicoes.bgColor,  
                      colorProgress: Definicoes.threeColor,
                    ),

                  ]
                ),
          
                Padding(padding: EdgeInsets.only(top: 20)),


                

                

              ],
            ),
          )
        ],
      ),)
    );
  }
}