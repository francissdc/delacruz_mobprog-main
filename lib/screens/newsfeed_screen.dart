import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Galema',
          postContent: 'Anak ng anak ng anak ni Zuma HEHE:)',
          date: '1 sec ago',
          numOfLikes: 1000000000000000000,
        ),
        NewsfeedCard(
          userName: 'Zuma Langit',
          postContent: 'I am ZUMA HEHEHEHE. #GeniusSawa',
          date: 'February 31, 2023',
          numOfLikes: 2,
          hasImage: true,
        ),
      ],
    );
  }
}