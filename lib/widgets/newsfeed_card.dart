import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'action_button.dart';
import 'custom_text.dart';
import 'post_image.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String? imageAssetPath;
  final String? avatarAssetPath;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.imageAssetPath,
    this.avatarAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    final sp = ScreenUtil().setSp(10);
    final w = ScreenUtil().setWidth(10);
    final userNameSize = ScreenUtil().setSp(15);
    final iconSize = ScreenUtil().setSp(15);
    final resolvedImagePath = imageAssetPath ?? 'assets/images/withzuma.jpg'; //

    return Card(
      margin: EdgeInsets.all(sp),
      child: Padding(
        padding: EdgeInsets.all(sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header + Enhancement 2 (User Profile Avatar)
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().radius(20),
                  backgroundColor: fbLightPrimary,
                  backgroundImage:
                      avatarAssetPath != null ? AssetImage(avatarAssetPath!) : null,
                  child: avatarAssetPath == null
                      ? Text(
                          userName.isNotEmpty ? userName[0] : '?',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
                SizedBox(width: w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: userNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(Icons.public, color: Colors.grey, size: iconSize),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),

            // Enhancement 1: Dynamic Image Widget
            if (hasImage == true) PostImage(assetPath: resolvedImagePath),

            // Number of likes only (reactions disregarded)
            if (numOfLikes != null)
              Padding(
                padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(5)),
                child: CustomText(
                  text: '$numOfLikes likes',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                ),
              ),

            // Enhancement 3: Widget-based Like / Comment / Share
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ActionButton(icon: Icons.thumb_up, label: 'Like', color: fbPrimary),
                ActionButton(icon: Icons.comment, label: 'Comment'),
                ActionButton(icon: Icons.redo, label: 'Share'),
              ],
            ),

            // Write a comment row
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().radius(14),
                  backgroundColor: fbLightPrimary,
                  child: const Icon(Icons.person, size: 16, color: Colors.white),
                ),
                SizedBox(width: w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: w),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(ScreenUtil().setSp(10)),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}