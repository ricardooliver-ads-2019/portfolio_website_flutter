import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
    required this.colorC,
    required this.img,

  }) : super(key: key);

  final dynamic percentage;
  final String label;
  final dynamic colorC;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: Definicoes.defaultDuration,
              builder: (context, double value, child) => Stack(
                fit: StackFit.passthrough,
                children: [
                  Image(image: AssetImage(img)),
                  CircularProgressIndicator(
                    strokeWidth: 15.0,
                    value: value,
                    color: colorC,
                    backgroundColor: Definicoes.progressIndicator0,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Definicoes.defaultPadding / 2),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
      ],
    );
  }
}
