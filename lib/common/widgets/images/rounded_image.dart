import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.imageUrl,
    this.width = double.infinity,
    this.height = 180,
    this.applyImageRadius = true,
    this.border,
    this.backgroudColor,
    this.fit = BoxFit.cover,
    this.padding,
    this.isInternetImage = false,
    this.onPress,
    this.borderRadius = TSizes.borderRadiusLg,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final double borderRadius;
  final BoxBorder? border;
  final Color? backgroudColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isInternetImage;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: backgroudColor,
          border: border,
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        clipBehavior: Clip.hardEdge,
        height: height,
        width: width,
        child: Image(
          image: isInternetImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: fit,
        ),
      ),
    );
  }
}
