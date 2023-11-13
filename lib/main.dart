import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vbpl/common/route_generator.dart';
import 'package:vbpl/common/theme.dart';
import 'package:vbpl/config/app_router.dart';
import 'package:vbpl/features/home/home.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: AppRouter.navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}