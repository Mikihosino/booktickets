import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(40)),
        children: [
          Text("What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 36)),
          Gap(AppLayout.getHeight(20)),
          const AppTicketsTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),

          Gap(AppLayout.getHeight(25)),
          /*
          takeoff
           */
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(17)),
          /*
         land
          */
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Styles.primaryColor
            ),
            child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 17, color: Color(0xFFF4F6FD)),
                )
            ),
          ),
          Gap(AppLayout.getHeight(35)),
          Container(
            child:const AppDoubleTextWidget(bigText: "Upcoming Flights ", smallText: "View all"),
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21),
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
                    Container(
                      height: AppLayout.getHeight(210),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/seat.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "15% off online from Seattle Airport"
                          " to Haneda Airport.\n "
                          "The discount is available by 24th April.",
                          style: Styles.headLineStyle3
                    )

                  ],
                ),
              ),
              Column(
                children: [
                 Stack(
                   children: [
                     Container(
                       height: AppLayout.getHeight(200),
                       width: size.width*0.42,
                       padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                       decoration: BoxDecoration(
                           color: Color(0xFF3AB8B8),
                           borderRadius: BorderRadius.circular(21),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.shade200,
                               blurRadius: 3,
                               spreadRadius: 1,
                             )
                           ]
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Discount\nfor survey", style: Styles.headLineStyle1,),
                           const Gap(10),
                           Text("Please, take the survey about our services and get a discount.",
                             style: Styles.headLineStyle1.copyWith(fontSize: 16,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white),),
                         ],
                       ),
                     ),
                     Positioned(
                         right: -50,
                         top: -45,
                         child: Container(
                           padding: EdgeInsets.all(AppLayout.getHeight(30)),
                           decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               border: Border.all(width: 8, color: Color(0xFF189999)),
                               color: Colors.transparent
                           ),
                         )
                     ),
                     Positioned(
                         right: -28,
                         top: -23,
                         child: Container(
                           padding: EdgeInsets.all(AppLayout.getHeight(30)),
                           decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               border: Border.all(width: 6, color: Color(0xFF189999)),
                               color: Colors.transparent
                           ),
                         )
                     ),

                   ],
                 ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                      height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                      
                    ),
                    child: Column(
                      children: [
                        Text("Trip to Asia", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '🛬 ',
                                  style: TextStyle(fontSize:  20)
                                ),
                                TextSpan(
                                    text: '🌏',
                                    style: TextStyle(fontSize:  42)
                                ),
                                TextSpan(
                                    text: '💺',
                                    style: TextStyle(fontSize:  20)
                                ),
                              ]
                            ))

                      ],
                    ),
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
