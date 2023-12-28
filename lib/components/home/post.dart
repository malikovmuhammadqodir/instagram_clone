import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:insta_clone/components/default/ProfileImg.dart';
import 'package:insta_clone/config/colors.dart';
import 'package:insta_clone/config/icons.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/pages/user_profile.dart';


// ignore: must_be_immutable
class Post extends StatelessWidget {
  var post;
  Post({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const UserProfile());
                  },
                  child: ProfileImg(
                    url: post['profileImg'],
                    radius: 20,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post['name'],
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(post['profession'],
                        style: const TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w400))
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.more)
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(post['content']),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.like),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(AppIcons.message),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(AppIcons.share),
                const Spacer(),
                SvgPicture.asset(AppIcons.history),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '100 Likes',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
                ),
                Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: 'Username ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: '...more',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey))
                ])),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  'View all 16 comments',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
