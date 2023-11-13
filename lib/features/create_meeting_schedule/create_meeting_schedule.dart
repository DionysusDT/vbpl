import 'package:flutter/material.dart';

class CreateMeetingSchedule extends StatefulWidget {
  const CreateMeetingSchedule({super.key});
  static const String routeName = '/create-meeting-schedule';

  @override
  State<CreateMeetingSchedule> createState() => _CreateMeetingScheduleState();
}

class _CreateMeetingScheduleState extends State<CreateMeetingSchedule> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Create Meeting Schedule'),
      );
  }
}