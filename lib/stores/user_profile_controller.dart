import 'package:get/get.dart';
import 'package:insta_clone/config/network_images.dart';

class UserProfileController extends GetxController {
  List<String> followersimages = [
    NetworkImages.dog,
    NetworkImages.dog2,
    NetworkImages.car
  ];

  List actuals = [
    {'img': NetworkImages.car, 'text': 'Text 1'},
    {'img': NetworkImages.dog, 'text': 'Text 2'},
    {'img': NetworkImages.girl, 'text': 'Text 3'},
    {'img': NetworkImages.girl, 'text': 'Text 4'},
    {'img': NetworkImages.dog2, 'text': 'Text 5'},
    {'img': NetworkImages.car, 'text': 'Text 6'},
  ];
}
