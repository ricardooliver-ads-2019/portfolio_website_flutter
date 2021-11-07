import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/animacao.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
class AnimationModal extends StatefulWidget {
  const AnimationModal({ Key? key }) : super(key: key);

  @override
  _AnimationModalState createState() => _AnimationModalState();
}

class _AnimationModalState extends State<AnimationModal> {
  @override
  Widget build(BuildContext context) {
    var telaWigth = MediaQuery.of(context).size.width;
    var rng = new Random();
    return Container(
      color: Definicoes.bgColor,
      width: telaWigth,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[for (int i=0; i<500; i++) Animacao(pTop: rng.nextInt(2080), pBotton: rng.nextInt(2080),pLeft: rng.nextInt(2080), pRight: rng.nextInt(2080),),],
      )
    );
  }
}// 