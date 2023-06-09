import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child:Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                airline tickets
                 */
            Container(
              width: AppLayout.getWidth(200),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white
              ),
              child: Center(
                  child: Text(firstTab),),
            ),
            /*
                    hotel
                    */
            Container(
              width: size.width*.44,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent
              ),
              child: Center(
                  child: Text(secondTab)),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)
        ),

      ),
    );
  }

}
