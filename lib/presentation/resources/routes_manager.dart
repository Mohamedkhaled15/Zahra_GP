import 'package:flutter/material.dart';
import 'package:zahra_gp/presentation/resources/strings_manager.dart';
import 'package:zahra_gp/presentation/screens/addInfo_screen/addInfo_view.dart';
import 'package:zahra_gp/presentation/screens/appointment_screen/appointment_view.dart';
import 'package:zahra_gp/presentation/screens/dalyCheckup_screen/dalyChecup_view.dart';
import 'package:zahra_gp/presentation/screens/main_screen/main_view.dart';
import 'package:zahra_gp/presentation/screens/medicine_screen/medicine_view.dart';
import 'package:zahra_gp/presentation/screens/selfExam_screen/selfExam_view.dart';
import '../screens/doctor_screen/doctor_view.dart';
import '../screens/doctor_screen/tabs/private_doctor/private_doctor.dart';
import '../screens/doctor_screen/tabs/reversation/call_details.dart';
import '../screens/doctor_screen/tabs/reversation/continu_rev.dart';
import '../screens/doctor_screen/tabs/reversation/reservation_confirmation.dart';
import '../screens/home_screen/home_view.dart';
import '../screens/notification_screen/notification_view.dart';
import '../screens/pay/credit_pay_view.dart';
import '../screens/pay/done_view.dart';
import '../screens/pay/fawry_pay_view.dart';
import '../screens/profile_screen/profile_view.dart';
import '../screens/sign_in/sign_in_view.dart';


class Routes {
  //main routes
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String doctorRoute = "/doctor";
  static const String notificationRoute = "/notification";
  static const String profileRoute = "/profile";
  static const String treatmentRoute = "/treatment";
  static const String selfExamRoute = "/selfExam";
  static const String homeRoute = "/home";
  static const String medicineRoute = "/medicine";
  static const String dalyCheckupRoute = "/dalyCheckup";
  static const String addInfoRoute = "/addInfo";
  static const String appointment = "/appointment";
  static const String reservationConfirm = "/reservationConfirm";
  static const String continueRev = "/continueRev";
  static const String callDetails = "/callDetails";
  static const String payFawry = "/payFawry";
  static const String creditPay = "/creditPay";
  static const String done = "/done";
  static const String signIn = "/signIn";
  static const String privateDoctor = "/privateDoctor";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) =>  HomeView());
      case Routes.medicineRoute:
        return MaterialPageRoute(builder: (_) =>  const MedicineView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) =>  MainView());
      case Routes.addInfoRoute:
        return MaterialPageRoute(builder: (_) => const AddInfoView());
      case Routes.dalyCheckupRoute:
        return MaterialPageRoute(builder: (_) => const DalyCheckupView());
      case Routes.doctorRoute:
        return MaterialPageRoute(builder: (_) => const DoctorView());
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: (_) =>  NotificationView());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) =>  ProfileView());
      case Routes.selfExamRoute:
        return MaterialPageRoute(builder: (_) => const SelfExamView());
      case Routes.appointment:
        return MaterialPageRoute(builder: (_) => const Appointment());
      case Routes.reservationConfirm:
        return MaterialPageRoute(builder: (_) => const ReservationConfirm());
      case Routes.continueRev:
        return MaterialPageRoute(builder: (_) => const ContinueRev());
        case Routes.callDetails:
        return MaterialPageRoute(builder: (_) =>  CallDetails());
        case Routes.payFawry:
        return MaterialPageRoute(builder: (_) =>  PayFawry());
        case Routes.creditPay:
        return MaterialPageRoute(builder: (_) =>  CreditPay());
        case Routes.done:
        return MaterialPageRoute(builder: (_) =>  Done());
        case Routes.signIn:
        return MaterialPageRoute(builder: (_) =>  SignIn());
        case Routes.privateDoctor:
        return MaterialPageRoute(builder: (_) =>  PrivateDoctor());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}


