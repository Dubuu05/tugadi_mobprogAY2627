import 'package:flutter/material.dart';

import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              notif.Notification(
                name: 'Test',
                post: 'Post',
                description: 'Description',
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
