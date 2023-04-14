import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HorizontalDoubleTextWidget extends StatelessWidget {
  final String nameLabel;
  final String profileValue;
  final CrossAxisAlignment alignment;
  const HorizontalDoubleTextWidget({Key? key, required this.nameLabel, required this.profileValue, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(nameLabel, style: Styles.headLineStyle3,),
            InkWell(
              child: Expanded(
                child: Text(profileValue, style: Styles.headLineStyle3.copyWith(color: Colors.grey.shade500, fontWeight: FontWeight.w500, // you can change it accordingly
                overflow: TextOverflow.ellipsis,  ),
              ),
              ),

            )
          ],
        ),

    );

  }
}
