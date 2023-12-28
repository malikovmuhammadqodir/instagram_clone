// ignore: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/config/colors.dart';

// ignore: must_be_immutable
class ProfileImg extends StatelessWidget {
  String url;
  double radius;
   ProfileImg({
    super.key,
    required this.url,
    this.radius=25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        gradient:  LinearGradient(colors: [AppColors.sariq,AppColors.pushti,AppColors.qizil]),
           borderRadius: BorderRadius.circular(50)),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)),
        child: CircleAvatar(
          radius: radius,
          backgroundImage:
              CachedNetworkImageProvider(url),
        ),
      ),
    );
  }
}
