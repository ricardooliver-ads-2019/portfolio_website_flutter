import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/infos.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';

class HomePageScreens extends StatelessWidget {
  const HomePageScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: Infos(),
          )
        ],
      ),
    );
  }
}