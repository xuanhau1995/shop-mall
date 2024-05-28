import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.borderRadiusLg,
    this.padding,
    this.margin,
    this.showBorder = true,
    this.backgroundColor = IColors.white,
    this.borderColor,
    this.child,
  });

  final double? width, height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color backgroundColor;
  final Color? borderColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: showBorder
            ? Border.all(
                color: borderColor ??
                    (dark ? Colors.white24 : IColors.borderPrimary))
            : null,
      ),
      child: child,
    );
  }
}
