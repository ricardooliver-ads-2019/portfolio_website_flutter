// ignore_for_file: unused_local_variable
import "dart:async";
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
class AnimationShootingStar extends StatefulWidget {
  const AnimationShootingStar({ Key? key }) : super(key: key);

  @override
  _AnimationShootingStarState createState() => _AnimationShootingStarState();
}

class _AnimationShootingStarState extends State<AnimationShootingStar> with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  late final AnimationController AnimatController;
  late final Animation<double> mouver;
  late final Animation<double> star;
  late final Animation<double> radiusStar;
  late final Timer timer;

 

  @override
  void initState(){
    super.initState();
    AnimatController = AnimationController(vsync: this, duration: Duration(seconds: 5));
    mouver = Tween<double>(begin: -50, end: 2280).animate(AnimatController);
    star = Tween<double>(begin: 1, end: 2).animate(AnimatController);
    radiusStar = Tween<double>(begin: 0, end: 2).animate(AnimatController);
    AnimatController.forward();
    AnimatController.repeat();
    
  }

  @override
  void dispose(){
    AnimatController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var widthTela = MediaQuery.of(context).size.width; 
    return Positioned(
      top: 0,
      left: 10,
      child: Center(
        child: AnimatedBuilder(
          animation: mouver,
          builder: (context, wiget){
            return Transform.translate(
              offset: Offset(mouver.value,mouver.value),
              child: Container(
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  color: Definicoes.twoColor,
                  boxShadow: [
                    BoxShadow(
                      color: Definicoes.twoColor,
                      spreadRadius: radiusStar.value,
                      blurRadius: star.value,
                    )
                  ]
                ),
              )
            );
          }
        ),
      ),
    );
  }
}