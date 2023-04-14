import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        const Gap(6),
        Text(firstText, style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        const Gap(6),
        Text(secondText, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
        const Gap(6),
      ],
    );
  }
}
