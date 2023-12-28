import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/config/icons.dart';
import 'package:insta_clone/config/imports.dart';

class HomerHeader extends StatelessWidget {
  const HomerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppIcons.logo),
              SizedBox(width: 2),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          Spacer(),
          SvgPicture.asset(AppIcons.like),
          SizedBox(width: 23,),
          SvgPicture.asset(AppIcons.messenger),
          SizedBox(width: 23,),
          SvgPicture.asset(AppIcons.plus),
        ],
      ),
    );
  }
}
