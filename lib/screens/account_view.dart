import 'package:booktickets/widgets/horizontal_double_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/layout_builder_widget.dart';

class AccountView extends StatelessWidget {
  final Map<String, dynamic> userAccount;
  const AccountView({Key? key, required this.userAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: AppLayout.getHeight(700),
      width: size.width*0.8,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(21),
      ),

      child: Column(
        children: [
          Text("Basic Information", style: Styles.textStyle,),
          HorizontalDoubleTextWidget(nameLabel: "Full Name", profileValue: userAccount['basic_info']['name'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 16, isColor: false,),
          HorizontalDoubleTextWidget(nameLabel: "Gender", profileValue: userAccount['basic_info']['gender'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 16, isColor: false,),
          HorizontalDoubleTextWidget(nameLabel: "Birth", profileValue: userAccount['basic_info']['birth'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 3, isColor: false,),
          const Gap(6),
          Text("Contact Information", style: Styles.textStyle,),
          HorizontalDoubleTextWidget(nameLabel: "Address", profileValue: userAccount['contact_info']['address'], alignment: CrossAxisAlignment.start),
          const AppLayoutBuilderWidget(sections: 16, isColor: false,),
          HorizontalDoubleTextWidget(nameLabel: "Phone Number", profileValue: userAccount['contact_info']['phone'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 16, isColor: false,),
          HorizontalDoubleTextWidget(nameLabel: "E-male", profileValue: userAccount['contact_info']['e-male'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 3, isColor: false,),
          const Gap(6),
          Text("Login", style: Styles.textStyle,),
          HorizontalDoubleTextWidget(nameLabel: "User", profileValue: userAccount['login_info']['username'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 16, isColor: false,),
          HorizontalDoubleTextWidget(nameLabel: "Password", profileValue: userAccount['login_info']['password'], alignment: CrossAxisAlignment.end),
          const AppLayoutBuilderWidget(sections: 3, isColor: false,),
          const Gap(6),
          Text("Passport", style: Styles.textStyle,),
          HorizontalDoubleTextWidget(nameLabel: "Expiry", profileValue: userAccount['passport']['expiry'], alignment: CrossAxisAlignment.end),
        ],
      ),
    );
  }
}
