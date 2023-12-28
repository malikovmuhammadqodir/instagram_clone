import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/components/default/ProfileImg.dart';
import 'package:insta_clone/config/icons.dart';
import 'package:insta_clone/config/network_images.dart';
import 'package:insta_clone/stores/home_controller.dart';

// ignore: must_be_immutable
class HomeHistories extends StatelessWidget {
  HomeController controller;
   HomeHistories({
    super.key,
    required this.controller  
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          CachedNetworkImageProvider(NetworkImages.dog),
                    ),
                    Positioned(
                        bottom: -5,
                        right: 0,
                        child: SvgPicture.asset(AppIcons.add))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Ruffles',
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(controller.histories.length, (index) {
                var item = controller.histories[index];
                return Row(
                  children: [
                    Column(
                      children: [
                        ProfileImg(
                          url: item['img'],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                         Text(
                          item['name'],
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                   const SizedBox(width:12,)
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
