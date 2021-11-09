// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
class Animacao extends StatefulWidget {
  final int pTop;
  final int pBotton;
  final int pLeft;
  final int pRight;

  Animacao({ Key? key, required this.pTop, required this.pBotton, required this.pLeft, required this.pRight, }) : super(key: key);


  @override
  _AnimacaoState createState() => _AnimacaoState();
}

class _AnimacaoState extends State<Animacao> with SingleTickerProviderStateMixin {
  late final AnimationController AnimatController;
  late final Animation<double> mouver;
  late final Animation<double> star;



  @override
  void initState(){
    super.initState();
    AnimatController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    mouver = Tween<double>(begin: -1, end: 3).animate(AnimatController);
    star = Tween<double>(begin: 1, end: 2).animate(AnimatController);
    AnimatController.forward();
    AnimatController.repeat(reverse: true);
  }

  @override
  void dispose(){
    AnimatController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Positioned(
      top: widget.pTop.toDouble(),
      left: widget.pLeft.toDouble(),
      bottom: widget.pBotton.toDouble(),
      right: widget.pRight.toDouble(),
      child: Center(
        child: AnimatedBuilder(
          animation: star,
          builder: (context, wiget){
            return Transform.translate(
              offset: Offset(mouver.value, 0),
              child: Container(
                width: 3.5,
                height: 3,
                decoration: BoxDecoration(
                  color: Definicoes.twoColor.withOpacity(0.5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Definicoes.twoColor,
                      spreadRadius: star.value,
                      blurRadius: 1 * AnimatController.value,                            
                    )
                  ]             
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}