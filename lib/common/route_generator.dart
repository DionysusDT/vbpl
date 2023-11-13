import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vbpl/features/create_meeting_schedule/create_meeting_schedule.dart';
import 'package:vbpl/features/created_report/created_report.dart';
import 'package:vbpl/features/home/home.dart';
import 'package:vbpl/features/receive_report/receive_report.dart';
import 'package:vbpl/features/report_detail/report_detail.dart';
import 'package:vbpl/features/return_report/return_report.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // switch (settings.name) {
    //   case Base.routeName:
    //     return buildRoute(
    //        Base(data: settings.arguments as Map<String,dynamic>),
    //       // settings: settings,
    //     );
    //   default:
    //     return _errorRoute();
    // }
    switch (settings.name) {
      // case BottomNavigationBarExampleApp.routeName:
      //   // return buildRoute(
      //   //   const BottomNavigationBarExampleAp()
      //   // );
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => BottomNavigationBarExampleApp(),
      //   );
      case HomeScreen.routeName:
        // return buildRoute(
        //   const HomeScreen()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
        );
      case CreateMeetingSchedule.routeName:
        // return buildRoute(
        //   const CreateMeetingSchedule()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => CreateMeetingSchedule(),
        );
      case ReceiveReport.routeName:
        // return buildRoute(
        //   const ReceiveReport()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => ReceiveReport(),
        );
      case ReturnReport.routeName:
        // return buildRoute(
        //   const ReturnReport()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => ReturnReport(),
        );
      case CreatedReport.routeName:
        // return buildRoute(
        //   const CreatedReport()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => CreatedReport(),
        );
      case CreateMeetingSchedule.routeName:
        // return buildRoute(
        //   const CreateMeetingSchedule()
        // );
        return MaterialPageRoute(
            builder: (BuildContext context) => CreateMeetingSchedule(),
        );
      case ReportDetail.routeName:
        return MaterialPageRoute(
            builder: (BuildContext context) => ReportDetail(),
        );
      default:
        return _errorRoute();
    }
  }

  // static MaterialPageRoute buildRoute(Widget child) {
  //   return MaterialPageRoute(
  //     builder: (BuildContext context) => child,
  //   );
  // }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
