// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/animacao.dart';
import 'package:portfolio_website_flutter/components/animation_shootingStar.dart';
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
    var telaHeight = MediaQuery.of(context).size.height;
    var rng = new Random();
    var NunStar = telaWigth > 1080 ? 250 : 10;
    return Container(
      color: Definicoes.bgColor,
      width: telaWigth,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[for (int i=0; i < NunStar; i++) 
        Animacao(
          pTop: rng.nextInt(telaHeight.toInt()), 
          //pBotton: rng.nextInt(telaHeight.toInt()),
          pLeft: rng.nextInt(telaWigth.toInt()), 
          pRight: rng.nextInt(telaWigth.toInt()),
        ),
        AnimationShootingStar()],
      )
    );
  }
}// 