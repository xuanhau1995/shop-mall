import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: IColors.primary,
            padding: const EdgeInsets.all(0),
            child: Stack(children: []),
          )
        ],
      ),
    );
  }
}
