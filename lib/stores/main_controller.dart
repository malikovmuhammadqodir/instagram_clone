import 'package:get/get.dart';
import 'package:insta_clone/config/icons.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/media.dart';
import 'package:insta_clone/pages/profile.dart';
import 'package:insta_clone/pages/search.dart';
import 'package:insta_clone/pages/storybook.dart';

class MainController extends GetxController {
  List menus = [
    {'id': 1, 'icon': AppIcons.home},
    {'id': 2, 'icon': AppIcons.media},
    {'id': 3, 'icon': AppIcons.search},
    {'id': 4, 'icon': AppIcons.storybook},
    {'id': 5, 'icon': AppIcons.storybook}
  ];


  int currentPage = 1;

  Widget choosePage(int id) {
    switch (id) {
      case 1:
        return Home();
      case 2:
        return Search();
      case 3:
        return Media();
      case 4:
        return Storubook();
      case 5:
        return Profile();
    }
    return Container();
  }

  selectPage(int id) {
    currentPage=id;
    update();
  }


}
