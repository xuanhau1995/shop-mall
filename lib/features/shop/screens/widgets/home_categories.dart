import 'package:flutter/material.dart';
import 'package:shopping_mall/common/widgets/image_text/vertical_image_text.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: IImages.cate1,
            label: 'Shoes Category',
            onTap: () {},
          );
        },
      ),
    );
  }
}
