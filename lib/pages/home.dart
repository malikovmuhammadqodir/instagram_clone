import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/components/home/header.dart';
import 'package:insta_clone/components/home/histories.dart';
import 'package:insta_clone/components/home/post.dart';
import 'package:insta_clone/stores/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
          child: Column(children: [
            const HomerHeader(),
            HomeHistories(
              controller: controller,
            ),
            const Divider(),
            Column(
              children: List.generate(controller.posts.length, (index)=>
                 Post(
                  post: controller.posts[index]
                )
              ),
            ),     
          ]),
        )));
      },
    );
  }
}
