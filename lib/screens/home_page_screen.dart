import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/infos.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class HomePageScreens extends StatelessWidget {
  const HomePageScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      backgroundColor: Definicoes.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Home",),
          ),
          SliverToBoxAdapter(
            child: Infos(),
          )
        ],
      ),
    );
  }
}