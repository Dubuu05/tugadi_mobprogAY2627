import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dynamic Post Data
    final List<Map<String, dynamic>> posts = [
      {
        'userName': 'Jerome Tugadi',
        'postContent': 'Pantrapiko',
        'numOfLikes': 100,
        'date': 'November 11',
        'avatarUrl': 'https://i.pravatar.cc/150?img=12',
        'postImageUrl': 'https://picsum.photos/800/500',
        'isAbsCbn': false,
      },
      {
        'userName': 'ABS-CBN News',
        'postContent': 'P-POP NAGMANEHO NG HINDI HAWAK ANG MANIBELA',
        'numOfLikes': 1000,
        'date': 'November 11',
        'avatarUrl': 'https://logo.clearbit.com/abs-cbn.com',
        'postImageUrl': 'https://picsum.photos/800/501',
        'isAbsCbn': true,
      },
    ];

    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return NewsFeedCard(
          userName: post['userName'],
          postContent: post['postContent'],
          numOfLikes: post['numOfLikes'],
          date: post['date'],
          avatarUrl: post['avatarUrl'],
          postImageUrl: post['postImageUrl'],
          isAbsCbn: post['isAbsCbn'],
        );
      },
    );
  }
}
