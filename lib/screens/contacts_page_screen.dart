import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/contact_form.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var telaWigth = MediaQuery.of(context).size.width;
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

          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: telaWigth > 360 ? 350 : telaWigth * 0.9 ,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Definicoes.primaryColor)
                    ),
                    child: ContactForm()
                  ),
                ],
              )
            ),
          )
          
        ]
      )
    );
  }
}
