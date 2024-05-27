import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    blurRadius: 50,
    color: IColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizotalProductShadow = BoxShadow(
    blurRadius: 50,
    color: IColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
