// ignore_for_file: unused_local_variable

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

  @override
  void initState(){
    super.initState();
    AnimatController = AnimationController(vsync: this, duration: Duration(seconds: 7));
    mouver = Tween<double>(begin: -50, end: 2280).animate(AnimatController);
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
      top: -10,
      left: 30,
      right: 1000,
      child: Center(
        child: AnimatedBuilder(
          animation: mouver,
          builder: (context, wiget){
            return Transform.translate(
              offset: Offset(mouver.value, mouver.value),
              child: Container(
                width:  4.7, 
                height: 4.0,
                decoration: BoxDecoration(
                  color: Definicoes.twoColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Definicoes.twoColor.withOpacity(0.7),
                      spreadRadius: 5 * AnimatController.value,
                      blurRadius: 5 * AnimatController.value,
                      offset: Offset(1.0, 2.0),
                                                 
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