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
      {
    'userName': 'BINI Aiah',
    'postContent': 'Hello Blooms! Thank you for always supporting us. We love you! 🌸',
    'numOfLikes': 15000,
    'date': 'November 17',
    'avatarUrl': 'https://i.pravatar.cc/150?img=47',
    'postImageUrl': 'https://picsum.photos/800/512',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Colet',
    'postContent': 'Keep smiling and spreading positive energy! 💗',
    'numOfLikes': 18000,
    'date': 'November 17',
    'avatarUrl': 'https://i.pravatar.cc/150?img=48',
    'postImageUrl': 'https://picsum.photos/800/513',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Maloi',
    'postContent': 'Hiii Blooooms! Miss na namin kayo! 🥹🌸',
    'numOfLikes': 25000,
    'date': 'November 18',
    'avatarUrl': 'https://i.pravatar.cc/150?img=49',
    'postImageUrl': 'https://picsum.photos/800/514',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Gwen',
    'postContent': 'Always believe in yourself. You are stronger than you think! ✨',
    'numOfLikes': 17000,
    'date': 'November 18',
    'avatarUrl': 'https://i.pravatar.cc/150?img=50',
    'postImageUrl': 'https://picsum.photos/800/515',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Stacey',
    'postContent': 'Serving confidence and good vibes today! 💅',
    'numOfLikes': 22000,
    'date': 'November 19',
    'avatarUrl': 'https://i.pravatar.cc/150?img=51',
    'postImageUrl': 'https://picsum.photos/800/516',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Mikha',
    'postContent': 'Thank you Blooms for making every moment special. ❤️',
    'numOfLikes': 30000,
    'date': 'November 19',
    'avatarUrl': 'https://i.pravatar.cc/150?img=52',
    'postImageUrl': 'https://picsum.photos/800/517',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Jhoanna',
    'postContent': 'Leadership is about growing together. Love you, girls! 🌷',
    'numOfLikes': 20000,
    'date': 'November 20',
    'avatarUrl': 'https://i.pravatar.cc/150?img=53',
    'postImageUrl': 'https://picsum.photos/800/518',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Sheena',
    'postContent': 'Dance, laugh, and enjoy every little moment! 💃',
    'numOfLikes': 19000,
    'date': 'November 20',
    'avatarUrl': 'https://i.pravatar.cc/150?img=54',
    'postImageUrl': 'https://picsum.photos/800/519',
    'isAbsCbn': false,
  },
  {
    'userName': 'BINI Official',
    'postContent': 'WALO HANGGANG DULO! Thank you for your endless love and support, Blooms! 🌸',
    'numOfLikes': 50000,
    'date': 'November 21',
    'avatarUrl': 'https://i.pravatar.cc/150?img=55',
    'postImageUrl': 'https://picsum.photos/800/520',
    'isAbsCbn': false,
  },
  {
    'userName': 'ABS-CBN News',
    'postContent': 'BINI, PATULOY NA NAGHAHATID NG PRIDE SA OPM AT PINOY POP MUSIC',
    'numOfLikes': 12000,
    'date': 'November 21',
    'avatarUrl': 'https://logo.clearbit.com/abs-cbn.com',
    'postImageUrl': 'https://picsum.photos/800/521',
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
