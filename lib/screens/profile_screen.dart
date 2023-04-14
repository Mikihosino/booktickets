import 'package:booktickets/screens/account_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter/cupertino.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';



class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Book Tickets', style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Gap(5),
                  Text(
                    "Account", style: Styles.headLineStyle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: AppLayout.getHeight(50),
                width: AppLayout.getWidth(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/logo-g83fb7980c_1280.png")
                  ),
                ),
              ),
            ],
          ),
          const Gap(45),
          Column(
            children: [
              Row(
                  children: accountData.map((account) => AccountView(userAccount: account)).toList()
              ),
            ],
          ),
          const Gap(20),

        ],
      ),
    );
  }
}
