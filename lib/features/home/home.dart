import 'package:flutter/material.dart';
import 'package:vbpl/config/app_router.dart';
import 'package:vbpl/config/app_router_mixin.dart';
import 'package:vbpl/extensions/extension.dart';
import 'package:vbpl/features/awaiting_announcement/awaiting_announcement.dart';
import 'package:vbpl/features/create_meeting_schedule/create_meeting_schedule.dart';
import 'package:vbpl/features/created_report/created_report.dart';
import 'package:vbpl/features/home/app_bar_search.dart';
import 'package:vbpl/features/receive_report/receive_report.dart';
import 'package:vbpl/features/return_report/return_report.dart';
import 'package:vbpl/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Size size = Size.zero;
  int currentIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  static const List<Widget> _screens = <Widget>[
    ReceiveReport(),
    ReturnReport(),
    CreatedReport(),
    CreateMeetingSchedule(),
    AwaitingAnnouncement(),
  ];

  final List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: Size.zero.height * 0.005,
        ),
        child: const Icon(Icons.add),
      ),
      label: 'Nhận tờ trình',
    ),
    BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: Size.zero.height * 0.005,
        ),
        child: const Icon(Icons.add),
      ),
      label: 'Trả tờ trình',
    ),
    BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: Size.zero.height * 0.005,
        ),
        child: const Icon(Icons.document_scanner),
      ),
      label: 'TT đã tạo',
    ),
    BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: Size.zero.height * 0.005,
        ),
        child: const Icon(Icons.lock_clock),
      ),
      label: 'Lịch họp',
    ),
    BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: Size.zero.height * 0.005,
        ),
        child: const Icon(Icons.cloud),
      ),
      label: 'Thông báo',
    ),
  ];

  final List<Map<String, dynamic>> _bottomNavBarItems = [
    {
      'bottomNavigation': BottomNavigationBarItem(
        icon: Container(
          padding: EdgeInsets.only(
            bottom: Size.zero.height * 0.005,
          ),
          child: const Icon(Icons.add),
        ),
        label: 'Nhận tờ trình',
      ),
      'screen': ReceiveReport(
          // openDrawer: () =>  AppRouter().scaffoldKey?.currentState?.openDrawer(),
          // closeDrawer: () => AppRouter().scaffoldKey?.currentState?.openEndDrawer(),
          ),
    },
    {
      'bottomNavigation': BottomNavigationBarItem(
        icon: Container(
          padding: EdgeInsets.only(
            bottom: Size.zero.height * 0.005,
          ),
          child: const Icon(Icons.add),
        ),
        label: 'Trả tờ trình',
      ),
      'screen': ReturnReport(),
    },
    {
      'bottomNavigation': BottomNavigationBarItem(
        icon: Container(
          padding: EdgeInsets.only(
            bottom: Size.zero.height * 0.005,
          ),
          child: const Icon(Icons.document_scanner),
        ),
        label: 'TT đã tạo',
      ),
      'screen': CreatedReport(),
    },
    {
      'bottomNavigation': BottomNavigationBarItem(
        icon: Container(
          padding: EdgeInsets.only(
            bottom: Size.zero.height * 0.005,
          ),
          child: const Icon(Icons.lock_clock),
        ),
        label: 'Lịch họp',
      ),
      'screen': CreateMeetingSchedule(),
    },
    {
      'bottomNavigation': BottomNavigationBarItem(
        icon: Container(
          padding: EdgeInsets.only(
            bottom: Size.zero.height * 0.005,
          ),
          child: const Icon(Icons.cloud),
        ),
        label: 'Thông báo',
      ),
      'screen': AwaitingAnnouncement(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // key:  GlobalKey<ScaffoldState>(),
      drawer: DrawerCus(),
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(80),
      //   child: AppBarSearch(),
      // ),
      // appBar: AppBar(
      //   leading: AppRouter().scaffoldKey?.currentState?.openDrawer(),
      // ),
      body: _screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.yellow,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Nhận tờ trình',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Trả tờ trình',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'TT đã tạo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock, color: Colors.yellow,),
            label: 'Lịch họp',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Thông báo',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int tab) {
          setState(() {
            currentIndex = tab;
          });
        },
      ),
    ));
  }

  getIcon(int i, String label, IconData icon) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: size.height * 0.005,
        ),
        child: Icon(icon),
      ),
      label: label,
    );
  }
}

// import 'package:flutter/material.dart';

// /// Flutter code sample for [BottomNavigationBar].

// // void main() => runApp(const BottomNavigationBarExampleApp());

// class BottomNavigationBarExampleApp extends StatelessWidget {
//   static const String routeName = '/home';
//   const BottomNavigationBarExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: BottomNavigationBarExample(),
//     );
//   }
// }

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Settings',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//             backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//             backgroundColor: Colors.pink,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
