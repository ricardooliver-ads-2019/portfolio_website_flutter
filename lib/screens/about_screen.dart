import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/box_skills.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/list_skills.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Sobre Mim",),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(AppImages.imgAvata),
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                StyledText(
                  text: '<bold><h1>Ricardo Oliveira</h1></bold>',
                  tags: {
                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 25, color: Colors.black54))
                  },
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(60, 40, 60, 60),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: AutoSizeText(
                      "    Olá! Eu sou o Ricardo, tenho 28 anos, estou cursando Analise e desenvolvimento de sistemas pelo IFRO, trabalho atualmente como vigilante patrimonial, onde graças ao meu horário de trabalho por escala, (12/36), consigo ter uma boa disciplina de estudos regulares, e estou em busca de uma oportunidade de estágio como desenvolvedor de software, pois deis do início da faculdade sonho em trabalhar como desenvolvedor de sistemas, mais especificamente com desenvolvimento mobile, apesar da minha pouca experiencia nessa área, sei que com minha dedicação e força de vontade posso e vou sim me tornar um excelente desenvolvedor.",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                  ),                  
                ),

                Text("Habilidades",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 40)),
                //Cart Skills FRONT-END
                BoxSkills(
                  title: 'Front-End', 
                  lista: ListSkills.listFrontEnd,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                BoxSkills(
                  title: 'Back-End', 
                  lista: ListSkills.listBackEnd,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                BoxSkills(
                  title: 'Framework', 
                  lista: ListSkills.listframework,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                BoxSkills(
                  title: 'Bando de Dados', 
                  lista: ListSkills.listBandoDados,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                BoxSkills(
                  title: 'Diferenciais', 
                  lista: ListSkills.listDiferenciais,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                BoxSkills(
                  title: 'Personalidade', 
                  lista: ListSkills.listComport,
                  color: Definicoes.bgColor, 
                  colorProgress: Colors.orange,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}