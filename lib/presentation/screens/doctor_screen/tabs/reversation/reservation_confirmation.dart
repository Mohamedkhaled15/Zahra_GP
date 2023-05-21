import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:zahra_gp/presentation/resources/routes_manager.dart';
import '../../../../component/continue_button.dart';
import '../../../../component/item_drawer.dart';
import '../../../../component/resrevation_card.dart';
import '../../../../resources/assets_manager.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_manager.dart';
import '../../../../resources/strings_manager.dart';
import '../../../../resources/styles_manager.dart';
import '../../../../resources/values_manager.dart';

class ReservationConfirm extends StatelessWidget {
  const ReservationConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: ColorManager.primary,
      endDrawer: Drawer(
        backgroundColor: ColorManager.darkPage,
        child: const ItemDrawer(),

      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 6/2,
            child: Container(

              decoration: BoxDecoration(
                color: ColorManager.primary,
                boxShadow: [
                  BoxShadow(
                    // color: ColorManager.primary,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                    // changes position of shadow
                  ),
                ],
              ),
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p14),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Builder(builder: (context) {
                        return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: IconManager.drawer);
                      }),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    AppStrings.confirmRes,
                    style:getBoldStyle(
                        color: ColorManager.darkSecondary,
                        fontSize: AppSize.s32),
                  ),


                ],
              ),

            ),
          ),
          ReservationCard(
            title: AppStrings.appointInOffice,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(AppStrings.appointmentHint,style: getLightStyle(color: ColorManager.gray,fontSize: FontSize.s20),textAlign: TextAlign.center,),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ContinueButton(text: AppStrings.confirmRes,routes: Routes.continueRev,),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text(AppStrings.declineRes,style: getNormalStyle(color: ColorManager.darkSecondary),),
          ),
        ],
      ),
    )
    );
  }
}