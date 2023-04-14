import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketScreen({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                children: [
                  const Gap(20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Text("My Trip Tickets", style: Styles.headLineStyle1.copyWith(color: Color(0xFF144D60)),),
                            const Gap(15),

                          ],
                        ),
                      ]
                  ),
                  const AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
                  const Gap(16),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(ticket: ticketList[0], isColor: false),
                  ),
                  Container(
                    width: size.width*0.8, //size of ticket width
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 3,
                            spreadRadius: 1,
                          )
                        ]
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(firstText: 'Malia Vin', secondText: 'MP1212 8880', alignment: CrossAxisAlignment.start, isColor: false,),
                            AppColumnLayout(firstText: '10E', secondText: 'Seat', alignment: CrossAxisAlignment.end, isColor: false,),
                          ],
                        ),
                        const AppLayoutBuilderWidget(sections: 16, isColor: false,),
                        const Gap(20),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/British-Airways-Logo-1973-1984.png", scale: 1.5,),
                                const AppColumnLayout(firstText: 'L225', secondText: 'Flight', alignment: CrossAxisAlignment.end, isColor: false,),

                              ],
                            ),
                          ],
                        ),
                        const Gap(20),
                        const AppLayoutBuilderWidget(sections: 16, isColor: false,),
                        const Gap(16),
                        Text("Payment method", style: Styles.headLineStyle4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Gap(6),
                                Row(
                                  children: [
                                    Image.asset("assets/images/visa.png", scale: 2,),
                                    Text("*** 2244", style: Styles.headLineStyle3,)
                                  ],
                                ),
                                const Gap(6),
                              ],
                            ),
                            const AppColumnLayout(firstText: '\$269.99', secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: false,),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Gap(20),


                ]
            ),
          ),
        ],
      ),
    );
  }
}

