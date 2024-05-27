import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/circular_container.dart';
import 'package:shopping_mall/common/widgets/images/rounded_image.dart';
import 'package:shopping_mall/features/shop/controllers/home_controller.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updateCarousePageIndicator(index)),
            items: banners.map((url) => TRoundedImage(imageUrl: url)).toList()),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  margin: const EdgeInsets.only(right: TSizes.sm / 2),
                  width: controller.carouseCurrentIndex.value == i ? 26 : 16,
                  height: 4,
                  backgroudColor: controller.carouseCurrentIndex.value == i
                      ? IColors.primary
                      : IColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
