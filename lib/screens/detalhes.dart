import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

import '../components/drawerc.dart';
import '../components/sliver_appbar_custom.dart';

class Detalhes extends StatefulWidget {

  final Map<String, dynamic> App;
  final fotos = <String>[].obs;
  final ScrollController controller = ScrollController();
  Detalhes({ Key? key,required this.App}) : super(key: key);

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
   @override
   Widget build(BuildContext context) {
    final images =  widget.App['fotos'].toList();
    widget.fotos.assignAll(images);
    var telaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
    
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      backgroundColor: Definicoes.bgColor,
      body: 
      Theme(data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          showTrackOnHover: true,
          isAlwaysShown: true,
          thumbColor: MaterialStateProperty.all(Definicoes.threeColor), 
        )
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,),
              child: Container(
                width: telaWidth + 80,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text('${widget.App['title']}',
                      style: GoogleFonts.oswald(
                        color: Definicoes.primaryColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Container(
                      constraints: BoxConstraints(maxHeight: 600, maxWidth: 850),
                      child: Scrollbar(
                        controller: widget.controller,
                        child: SingleChildScrollView(
                          controller: widget.controller,
                          scrollDirection: Axis.horizontal,
                           child: Obx(() { 
                                   return Row(
                                     
                                    children: widget.fotos.map((foto) => Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container( constraints: BoxConstraints(maxHeight: 500, maxWidth: 250), child: Image.asset(foto, height: 500,)),
                                    )).toList(),
                                  );
                               }
                             )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}