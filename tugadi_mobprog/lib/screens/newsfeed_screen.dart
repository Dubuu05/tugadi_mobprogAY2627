import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Jerome Tugadi',
          postContent: 'Pantrapiko',
          numOfLikes: 100,
          date: 'November 11',
          avatarUrl: 'https://i.pravatar.cc/150?img=12',
          postImageUrl: 'https://picsum.photos/800/500',
        ),

        NewsFeedCard(
          userName: 'ABS-CBN News',
          postContent: 'P-POP NAGMANEHO NG HINDI HAWAK ANG MANIBELA',
          numOfLikes: 1000,
          date: 'November 11',
          isAbsCbn: true,
          avatarUrl: 'https://logo.clearbit.com/abs-cbn.com',
          postImageUrl: 'https://picsum.photos/800/501',
        ),
      ],
    );
  }
}
