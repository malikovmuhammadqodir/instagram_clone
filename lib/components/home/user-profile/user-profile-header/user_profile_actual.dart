import 'package:cached_network_image/cached_network_image.dart';
import 'package:insta_clone/config/colors.dart';
import 'package:insta_clone/config/imports.dart';

// ignore: must_be_immutable
class UserProfileActual extends StatelessWidget {
   UserProfileActual({
    super.key,
    required this.item
  });
  var item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                    border:Border.all(color: AppColors.grey3 ,width: 2
                    ),
                    borderRadius: BorderRadiusDirectional.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.white ,width: 2),
                    borderRadius: BorderRadiusDirectional.circular(50)
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: CachedNetworkImageProvider(item['img']),
                    
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Text(item['text'] ,style: TextStyle(fontSize: 12),)
          ],
        ),
        SizedBox(width: 18,),
      ],
    );
  }
}

