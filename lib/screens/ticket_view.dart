import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85, //size of ticket width
      height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card of ticket
             */
            const Gap(20),
            Container(
              decoration: BoxDecoration(
                color: isColor == null? const Color(0xFF526799):Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
            ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(//チケットの中全て
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                      const Spacer(),
                      const ThickContainer(isColor:true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox( //間の点点
                            height: AppLayout.getHeight(24),
                            child: const AppLayoutBuilderWidget(sections: 6,)
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, 
                            color: isColor == null? Colors.white: const Color(0xFF8ACCF7),),)),

                        ],
                      )),
                      const ThickContainer(isColor: true,),

                      const Spacer(),

                      Text(ticket['to']['code'], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),

                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(ticket['from']['name'], style: isColor==null? Styles.headLineStyle4.copyWith(color:Colors.white):Styles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black),),
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(ticket['to']['name'], textAlign: TextAlign.end,style: isColor==null? Styles.headLineStyle4.copyWith(color:Colors.white):Styles.headLineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the orange part of the card of ticket
            top part of it
             */
            Container(
              color: isColor==null? Styles.blueColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        ) 
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context , BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: AppLayout.getWidth(5), height: AppLayout.getHeight(1),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor==null? Colors.white:Colors.grey.shade200
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.grey.shade200:Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),

            ),
            /*
            bottom part of the orange part of the card of
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor==null? Styles.blueColor:Colors.white,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("DATE",
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Departure time",
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Gate",
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)

                        ],
                      )

                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
