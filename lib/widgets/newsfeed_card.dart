import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

// Reusable widget for post action buttons
class PostActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: FB_DARK_PRIMARY,
        size: ScreenUtil().setSp(18),
      ),
      label: CustomText(
        text: label,
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }
}

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile and Post Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Enhancement 2: Profile Avatar
                    CircleAvatar(
                      radius: ScreenUtil().setSp(20),
                      backgroundColor: FB_LIGHT_PRIMARY,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: ScreenUtil().setSp(25),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: userName,
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: date,
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(3),
                            ),
                            Icon(
                              Icons.public,
                              color: Colors.grey,
                              size: ScreenUtil().setSp(15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            // Enhancement 1: Dynamic Image Placeholder
            if (hasImage)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_outlined,
                        size: ScreenUtil().setSp(45),
                        color: Colors.grey,
                      ),
                      SizedBox(height: ScreenUtil().setHeight(5)),
                      CustomText(
                        text: 'Image Placeholder',
                        fontSize: ScreenUtil().setSp(12),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),

            // Enhancement 3: Widget-Based Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostActionButton(
                  icon: Icons.thumb_up,
                  label: numOfLikes.toString(),
                  onPressed: () {
                    debugPrint('Liked');
                  },
                ),
                PostActionButton(
                  icon: Icons.comment,
                  label: 'Comment',
                  onPressed: () {
                    debugPrint('Comment');
                  },
                ),
                PostActionButton(
                  icon: Icons.redo,
                  label: 'Share',
                  onPressed: () {
                    debugPrint('Share');
                  },
                ),
              ],
            ),

            // Comment Section
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(15),
                  backgroundColor: FB_LIGHT_PRIMARY,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: ScreenUtil().setSp(18),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setSp(10),
                      0,
                      0,
                      0,
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(35),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(20),
                      ),
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

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            CustomText(
              text: 'View comments',
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
