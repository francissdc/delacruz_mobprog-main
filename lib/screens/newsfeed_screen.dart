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
         NewsfeedCard(
          userName: 'Uncle Dags',
          postContent: 'Di ako galet, caviteno lang ako',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
          hasImage: true,
        ),
         NewsfeedCard(
          userName: 'Uncle B',
          postContent: 'WENG WENG WENG WENG WENG WENG',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
          hasImage: true,
        ),
        NewsfeedCard(
          userName: 'ABI',
          postContent: 'MAMAYA NA AKO UUWI',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
        ),
        NewsfeedCard(
          userName: 'ABI',
          postContent: 'ALAM MO BA GIRL',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
        ),
        NewsfeedCard(
          userName: 'SICA',
          postContent: 'MANILA GINAWA KONG L.A.',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
        ),
        NewsfeedCard(
          userName: 'JUST HUSH',
          postContent: 'BASTA MASIRAM',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
        ),
        NewsfeedCard(
          userName: 'NATEMAN',
          postContent: 'HIRAP MONG MAHALIN SABI DELIKADO',
          date: '3 sec ago',
          numOfLikes: 1000000000000000000,
        ),
      ],
    );
  }
}