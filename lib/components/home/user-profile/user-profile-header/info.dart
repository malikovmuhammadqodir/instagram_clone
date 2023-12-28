import 'package:insta_clone/config/imports.dart';

// ignore: must_be_immutable
class UserProfileInfo extends StatelessWidget {
   UserProfileInfo({
    super.key,
    required this.count,
    required this.text
  });
String count;
String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,style: TextStyle(fontWeight: FontWeight.w700),),
        Text(text,style: TextStyle(fontWeight: FontWeight.w400),)
      ],
    );
  }
}