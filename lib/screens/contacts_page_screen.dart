import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Contatos",),
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
                  child: Scrollbar(
                    showTrackOnHover:true,
                    controller: controller,
                    isAlwaysShown: true,
                    child: ListView(
                      controller: controller,
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 270.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),                  
                      ],
                    ),
                  ),
                ),
              )

            ]
          ), itemExtent: 500),
          
        ]
      )
    );
  }
}
