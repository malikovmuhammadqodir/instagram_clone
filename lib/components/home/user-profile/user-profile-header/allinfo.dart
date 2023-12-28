import 'package:insta_clone/components/default/ProfileImg.dart';
import 'package:insta_clone/components/home/user-profile/user-profile-header/info.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/config/network_images.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Row(
        children: [
          ProfileImg(
            url: NetworkImages.dog,
            radius: 30,
          ),
          Spacer(),
          UserProfileInfo(
            count: '1,234',
            text: 'Posts',
          ),
          SizedBox(width: 24),
          UserProfileInfo(
            count: '5678',
            text: 'Followers',
          ),
          SizedBox(
            width: 24,
          ),
          UserProfileInfo(
            count: '9123',
            text: 'Following',
          )
        ],
      ),
    );
  }
}
