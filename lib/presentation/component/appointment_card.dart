import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/styles_manager.dart';
import '../resources/values_manager.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 4.1/3,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppPadding.p14,vertical: AppPadding.p8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: AppPadding.p14),
              margin: const EdgeInsets.symmetric(
                  horizontal: AppMargin.m4, vertical: AppMargin.m10),
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorManager.darkPage,
                boxShadow: [
                  BoxShadow(
                      color: ColorManager.gray, //New
                      blurRadius: 1.0,
                      offset: Offset(1, 1),
                      spreadRadius: 1)
                ],
              ),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        textAlign: TextAlign.end,
                        TextSpan(children: [
                          TextSpan(
                            text: AppStrings.docName,
                            style: getNormalStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.darkSecondary,
                                height: 3),
                          ),
                          TextSpan(
                              text: AppStrings.docDescription,
                              style: getLightStyle(
                                color: ColorManager.secondary,
                                fontSize: FontSize.s10,
                              )),
                        ]),
                        style: const TextStyle(height: 1),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: ColorManager.darkPage,
                          boxShadow: [
                            BoxShadow(
                                color: ColorManager.gray, //New
                                blurRadius: 1.0,
                                offset: const Offset(1, 1),
                                spreadRadius: 1)
                          ],
                        ),
                        child: AvatarView(
                          radius: 30,
                          avatarType: AvatarType.CIRCLE,
                          imagePath: ImageAssets.me,
                        ),
                      ),
                    ],
                  ),
                  //Stare**********
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                    child: ListView.builder(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 3.2),
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) =>
                          Image.asset(ImageAssets.star1, scale: 9),
                    ),
                  ),
//---------------------------------------------------------------------------------
                  Divider(
                    endIndent: MediaQuery.of(context).size.width/9,
                    indent: MediaQuery.of(context).size.width/9,
                    thickness: 1,

                    color: ColorManager.darkSecondary,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/120,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.docSpic,
                        style: getLightStyle(
                            color: ColorManager.secondary, fontSize: FontSize.s12),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Image.asset(
                        ImageAssets.sth,
                        color: ColorManager.darkSecondary,
                        scale: 5,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.appointmentLoc,
                        style: getLightStyle(
                            color: ColorManager.secondary, fontSize: FontSize.s12),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Image.asset(
                        ImageAssets.loc,
                        color: ColorManager.darkSecondary,
                        scale: 5,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.bookingCost1,
                        style: getLightStyle(
                            color: ColorManager.secondary, fontSize: FontSize.s12),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Image.asset(
                        ImageAssets.dollar,
                        color: ColorManager.darkSecondary,
                        scale: 20,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/9,),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.bookingCost2,
                        style: getLightStyle(
                            color: ColorManager.secondary, fontSize: FontSize.s12),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Image.asset(
                        ImageAssets.dollar,
                        color: ColorManager.darkSecondary,
                        scale: 20,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/9,),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/100,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
