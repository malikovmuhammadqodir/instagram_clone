import 'package:insta_clone/config/imports.dart';

class UserProfileDescription extends StatelessWidget {
  const UserProfileDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            'Categoty/Genre text',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 3,
          ),
          Text.rich(TextSpan(style: TextStyle(fontSize: 13), children: [
            const TextSpan(
                text:
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididnt'),
            TextSpan(
                text: ' #hashtag',
                style: TextStyle(color: Colors.blue.shade700))
          ])),
          const SizedBox(
            height: 3,
          ),
          Text(
            'Link goes here',
            style: TextStyle(fontSize: 13, color: Colors.blue.shade700),
          )
        ],
      ),
    );
  }
}
