import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String? avatarUrl;
  final String? postImageUrl;
  final bool isAbsCbn;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.avatarUrl,
    this.postImageUrl,
    this.isAbsCbn = false,
  });

  // Profile Avatar
  Widget buildAvatar() {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: Colors.grey[300],
      child: ClipOval(
        child: avatarUrl != null
            ? Image.network(
                avatarUrl!,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    buildFallbackAvatar(),
              )
            : buildFallbackAvatar(),
      ),
    );
  }

  Widget buildFallbackAvatar() {
    if (isAbsCbn) {
      return Container(
        width: 40.w,
        height: 40.h,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text(
          'ABS-CBN',
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      );
    }

    return const Icon(Icons.person, color: Colors.grey);
  }

  // Post Image
  Widget buildPostImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.network(
        postImageUrl!,
        width: double.infinity,
        height: 180.h,
        fit: BoxFit.contain,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;

          return Container(
            height: 180.h,
            width: double.infinity,
            color: Colors.grey[200],
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 180.h,
            width: double.infinity,
            color: Colors.grey[200],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.broken_image, size: 40, color: Colors.grey),
                Text('Image unavailable'),
              ],
            ),
          );
        },
      ),
    );
  }

  // Post Action Buttons
  Widget postAction({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Expanded(
      child: TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: fbDarkPrimary,
          padding: EdgeInsets.symmetric(vertical: 8.h),
        ),
        icon: Icon(icon, size: 18.sp),
        label: CustomText(
          text: label,
          fontSize: 12.sp,
          color: fbDarkPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Information
            Row(
              children: [
                buildAvatar(),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4.w),
                          Icon(Icons.public, color: Colors.grey, size: 14.sp),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            // Post Content
            CustomText(text: postContent, fontSize: 14.sp, color: Colors.black),

            SizedBox(height: 10.h),

            // Post Image
            if (postImageUrl != null) buildPostImage(),

            SizedBox(height: 8.h),

            // Like Count
            Row(
              children: [
                Icon(Icons.thumb_up, color: fbPrimary, size: 16.sp),
                SizedBox(width: 5.w),
                CustomText(
                  text: numOfLikes.toString(),
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ],
            ),

            const Divider(),

            // Like, Comment and Share
            Row(
              children: [
                postAction(
                  icon: Icons.thumb_up_outlined,
                  label: 'Like',
                  onPressed: () {},
                ),
                postAction(
                  icon: Icons.comment_outlined,
                  label: 'Comment',
                  onPressed: () {},
                ),
                postAction(
                  icon: Icons.share_outlined,
                  label: 'Share',
                  onPressed: () {},
                ),
              ],
            ),

            const Divider(),

            // Write a Comment
            Row(
              children: [
                buildAvatar(),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    alignment: Alignment.centerLeft,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            CustomText(
              text: 'View comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
