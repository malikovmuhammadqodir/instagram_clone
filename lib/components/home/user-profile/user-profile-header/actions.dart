import 'package:insta_clone/config/colors.dart';
import 'package:insta_clone/config/imports.dart';

import '../../../default/button.dart';

class UserProfileActions extends StatelessWidget {
  const UserProfileActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Button(
            text: 'Follow',
            textColor: Colors.white,
            backColor: AppColors.blue,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Button(
                    text: 'Message',
                    textColor: Colors.black,
                    backColor: AppColors.grey2),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                child: Button(
                  text: 'Subscribe',
                  textColor: Colors.black,
                  backColor: AppColors.grey2,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                child: Button(
                  text: 'Contact',
                  textColor: Colors.black,
                  backColor: AppColors.grey2,
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.grey2,
                ),
                child: const Icon(Icons.person_add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
