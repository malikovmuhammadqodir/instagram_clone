import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/actions.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/allinfo.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/description.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/followers.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/user_profile_actual.dart';
import 'package:insta_clone/config/icons.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/stores/user_profile_controller.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  UserProfileController controller = Get.put(UserProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserProfileController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Username',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(AppIcons.verified)
            ],
          ),
          actions: [
            SvgPicture.asset(AppIcons.bal),
            const SizedBox(
              width: 24,
            ),
            SvgPicture.asset(AppIcons.more),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
        body: Column(
          children: [
            const UserProfileHeader(),
            const UserProfileDescription(),
            Followers(
              controller: controller,
            ),
            const UserProfileActions(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                child: Row(
                    children: List.generate(controller.actuals.length, (index) {
                      var item = controller.actuals[index];
                  return UserProfileActual(item: item);
                })),
              ),
            )
          ],
        ),
      );
    });
  }
}
