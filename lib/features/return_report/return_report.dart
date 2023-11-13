import 'package:flutter/material.dart';

class ReturnReport extends StatefulWidget {
  const ReturnReport({super.key});
  static const String routeName = '/return-report';

  @override
  State<ReturnReport> createState() => _ReturnReportState();
}

class _ReturnReportState extends State<ReturnReport> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Return Report'),
      );
  }
}