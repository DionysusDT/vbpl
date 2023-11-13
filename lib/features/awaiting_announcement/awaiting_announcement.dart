import 'package:flutter/material.dart';

class AwaitingAnnouncement extends StatefulWidget {
  const AwaitingAnnouncement({super.key});
  static const String routeName = '/awaiting-announcement';

  @override
  State<AwaitingAnnouncement> createState() => _AwaitingAnnouncementState();
}

class _AwaitingAnnouncementState extends State<AwaitingAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Awaiting Announcement'),
      );
  }
}