// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
class Animacao extends StatefulWidget {
  final int pTop;
  //final int pBotton;
  final int pLeft;
  final int pRight;

  Animacao({ Key? key, required this.pTop, required this.pLeft, required this.pRight, }) : super(key: key);


  @override
  _AnimacaoState createState() => _AnimacaoState();
}

class _AnimacaoState extends State<Animacao> with SingleTickerProviderStateMixin {
  late final AnimationController AnimatController;
  late final Animation<double> star;
  late final Animation<double> radiusStar;



  @override
  void initState(){
    super.initState();
    AnimatController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    star = Tween<double>(begin: 1, end: 2).animate(AnimatController);
    radiusStar = Tween<double>(begin: 0, end: 1).animate(AnimatController);
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
      //bottom: widget.pBotton.toDouble(),
      right: widget.pRight.toDouble(),
      child: Center(
        child: AnimatedBuilder(
          animation: star,
          builder: (context, wiget){
            return Container(
              width: 1,
              height: 1,
              decoration: BoxDecoration(
                color: Definicoes.twoColor.withOpacity(0.5),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Definicoes.twoColor.withOpacity(1),
                    spreadRadius: radiusStar.value,
                    blurRadius: star.value,                            
                  )
                ]             
              ),
            );
          }
        ),
      ),
    );
  }
}