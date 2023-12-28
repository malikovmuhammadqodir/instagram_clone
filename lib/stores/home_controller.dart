import 'package:get/get.dart';
import 'package:insta_clone/config/network_images.dart';

class HomeController extends GetxController {
  List histories = [
    {'img': NetworkImages.dog, 'name': 'Sabanok'},
    {'img': NetworkImages.car, 'name': 'Car'},
    {'img': NetworkImages.dog2, 'name': 'Dog2'},
    {'img': NetworkImages.girl, 'name': 'Mirana'},
    {'img': NetworkImages.girl2, 'name': 'User4'},
    {'img': NetworkImages.dog, 'name': 'User5'},
    {'img': NetworkImages.car, 'name': 'User6'},
  ];

  List posts = [
    {
      'profileImg': NetworkImages.dog,
      'name': 'Ruffles',
      'profession': 'Sponsered',
      'content': NetworkImages.car,
      'likeCount': 100,
      'username': 'John Doe',
      'commentCount': 16
    },
    {
      'profileImg': NetworkImages.dog2,
      'name': 'Robbin',
      'profession': 'Sponsered',
      'content': NetworkImages.girl,
      'likeCount': 100,
      'username': 'John Doe',
      'commentCount': 16
    },
    {
      'profileImg': NetworkImages.girl,
      'name': 'Marita',
      'profession': 'Sponsered',
      'content': NetworkImages.girl2,
      'likeCount': 100,
      'username': 'John Doe',
      'commentCount': 16
    },
    {
      'profileImg': NetworkImages.car,
      'name': 'Ruffles',
      'profession': 'Sponsered',
      'content': NetworkImages.dog,
      'likeCount': 100,
      'username': 'John Doe',
      'commentCount': 16
    },
    {
      'profileImg': NetworkImages.girl2,
      'name': 'Ode',
      'profession': 'Sponsered',
      'content': NetworkImages.dog2,
      'likeCount': 100,
      'username': 'John Doe',
      'commentCount': 16
    }
  ];
}
