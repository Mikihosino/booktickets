import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.sections}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("The width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
            width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
              color: Colors.blueGrey.shade200 //make home-screen the plane line to white " isColor==null? Colors.white: "
          ),),
          )),
        );
      },

    );
  }
}
