import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TCircularIconImage extends StatelessWidget {
  const TCircularIconImage({
    super.key,
    this.fit,
    required this.imageURL,
    this.isNextworkImage = false,
    this.overLayColor,
    this.backgroudColor,
    this.height = 50,
    this.width = 50,
    this.padding = TSizes.sm,
  });

  final BoxFit? fit;
  final String imageURL;
  final bool isNextworkImage;
  final Color? overLayColor;
  final Color? backgroudColor;
  final double height, width, padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? IColors.black : IColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNextworkImage
            ? NetworkImage(imageURL)
            : AssetImage(imageURL) as ImageProvider,
        color: overLayColor,
      ),
    );
  }
}
