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
              name: 'BINI Aiah',
              post: 'Aiah',
              description: 'liked your post. ❤️',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Colet',
              post: 'Colet',
              description: 'commented: Thank you for supporting BINI! 🌸',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Maloi',
              post: 'Maloi',
              description: 'liked your photo. 💗',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Gwen',
              post: 'Gwen',
              description: 'mentioned you in a comment.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Stacey',
              post: 'Stacey',
              description: 'started following you.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Mikha',
              post: 'Mikha',
              description: 'liked your post. 🔥',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Jhoanna',
              post: 'Jhoanna',
              description: 'commented: Hello Blooms! 🌷',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Sheena',
              post: 'Sheena',
              description: 'reacted to your post with ❤️.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Official',
              post: 'BINI',
              description: 'posted a new photo. 🌸',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Aiah',
              post: 'Aiah',
              description: 'started following you.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Colet',
              post: 'Colet',
              description: 'mentioned you in a post.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Maloi',
              post: 'Maloi',
              description: 'commented: Love you, Blooms! 💕',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Gwen',
              post: 'Gwen',
              description: 'liked your comment.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Stacey',
              post: 'Stacey',
              description: 'shared a new update.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Mikha',
              post: 'Mikha',
              description: 'reacted to your photo. 🔥',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Jhoanna',
              post: 'Jhoanna',
              description: 'started following you.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Sheena',
              post: 'Sheena',
              description: 'commented: Keep shining! ✨',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Official',
              post: 'BINI',
              description: 'shared a new group photo.',
            ),
            Divider(),
            notif.Notification(
              name: 'BINI Maloi',
              post: 'Maloi',
              description: 'liked your recent post. 🌸',
            ),
            Divider(),
          ],
        ),
      ),
    ),
  );
}
}
