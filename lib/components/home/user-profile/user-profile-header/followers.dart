import 'package:cached_network_image/cached_network_image.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/stores/user_profile_controller.dart';

// ignore: must_be_immutable
class Followers extends StatelessWidget {
    Followers({
    super.key,
    required this.controller
  });
  UserProfileController controller ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ const SizedBox(width: 12,),
        Row(
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: Stack(
                children: List.generate(3, (index) {
                  return Positioned(
                    right: 25.0 * index,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            controller.followersimages[index]),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const SizedBox(
              width: 300,
              child: Text.rich(
                  TextSpan(style: TextStyle(fontSize: 13), children: [
                TextSpan(text: 'Followed by '),
                TextSpan(
                    text: ' username username ',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: 'and '),
                TextSpan(
                    text: ' 100 others',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ])),
            )
          ],
        ),
         const SizedBox(width: 12,),
      ],
    );
  }
}
