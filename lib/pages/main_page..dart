// ignore: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:insta_clone/config/network_images.dart';
import 'package:insta_clone/stores/main_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(controller.menus.length, (index) {
                var menu = controller.menus[index];
                return InkWell(
                  onTap: () {
                    controller.selectPage(menu['id']);
                  },
                  child: menu['id'] == 5
                      ? CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              CachedNetworkImageProvider(NetworkImages.dog2))
                      : InkWell 
                      (onTap: () {
                        controller.selectPage(menu['id']);
                      },
                        child: 
                      SvgPicture.asset(menu['icon'])),
                );
              }),
            ),
          ),
          body: controller.choosePage(controller.currentPage )
        );
      },
    );
  }
}
