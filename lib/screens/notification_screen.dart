import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delacruz_mobprog/widgets/notification_widget.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          NotificationWidget(
            description: 'Sample description',
            post: 'Sample Post',
            name: 'Sample Name',
          ),
           // NotificationWidget
          NotificationWidget(
            description: 'liked your post.',
            post: 'Di ako galet, caviteno lang ako',
            name: 'UNCLE DAGS',
          ),
          NotificationWidget(
            description: 'commented on your post: "Solid beat bro!"',
            post: 'MAMAYA NA KO UUWI',
            name: 'HEV ABI',
          ),
          NotificationWidget(
            description: 'shared your post.',
            post: 'HIRAP MONG MAHALIN SABI DELIKADO',
            name: 'NATEMAN',
  ),
          NotificationWidget(
            description: 'reacted to your post.',
            post: 'Bagong drop mamaya',
            name: 'LA MAVE',
  ),
          NotificationWidget(
            description: 'commented on your post: "Walang kupas!"',
            post: 'Cavite roadtrip throwback',
            name: 'UNCLE DAGS',
  ),
          NotificationWidget(
            description: 'liked your post.',
            post: 'Kape muna bago mag-record',
            name: 'HEV ABI',
  ),
          NotificationWidget(
          description: 'mentioned you in a comment.',
          post: 'Tara foodtrip mamaya',
          name: 'NATEMAN',
  ),
  NotificationWidget(
    description: 'liked your post.',
    post: 'Sunset view after gig',
    name: 'LA MAVE',
  ),
  NotificationWidget(
    description: 'shared your post to their story.',
    post: 'Wala nang paligoy-ligoy',
    name: 'UNCLE DAGS',
  ),
  NotificationWidget(
    description: 'reacted to your post.',
    post: 'Unfinished track snippet',
    name: 'HEV ABI',
  ),
  NotificationWidget(
    description: 'liked your post.',
    post: 'Sino gising pa?',
    name: 'NATEMAN',
  ),
  NotificationWidget(
    description: 'commented on your post: "Astig nito!"',
    post: 'Throwback photo shoot',
    name: 'LA MAVE',
  ),
  NotificationWidget(
    description: 'reacted to your post.',
    post: 'Ingat sa biyahe mga boss',
    name: 'UNCLE DAGS',
  ),
  NotificationWidget(
    description: 'shared your post.',
    post: 'Bagong verse na naman',
    name: 'HEV ABI',
  ),
  NotificationWidget(
    description: 'commented on your post: "G!"',
    post: 'Tambay saglit after work',
    name: 'NATEMAN',
  ),
  NotificationWidget(
    description: 'shared your post to their story.',
    post: 'Good vibes lang palagi',
    name: 'LA MAVE',
  ),
  NotificationWidget(
    description: 'commented on your post: "Totoo yan!"',
    post: 'Kalma lang tayo lagi',
    name: 'UNCLE DAGS',
  ),
  NotificationWidget(
    description: 'mentioned you in a post.',
    post: 'Soundcheck done',
    name: 'HEV ABI',
  ),
  NotificationWidget(
    description: 'reacted to your post.',
    post: 'Sabado night plans',
    name: 'NATEMAN',
  ),
  NotificationWidget(
    description: 'liked your post.',
    post: ' Salamat sa suporta!',
    name: 'LA MAVE',
  ),
],
      ), // Column
    ); // Container
  }
}