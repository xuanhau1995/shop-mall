import 'package:flutter/material.dart';
import 'package:shopping_mall/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/circular_container.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: IColors.primary,

          /// -- Stack Widgets
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: ICircularContainer(
                  backgroudColor: IColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                left: 250,
                child: ICircularContainer(
                  backgroudColor: IColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
