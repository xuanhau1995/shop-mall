import 'package:flutter/cupertino.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class ICircularContainer extends StatelessWidget {
  const ICircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroudColor = IColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroudColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroudColor,
      ),
      child: child,
    );
  }
}
