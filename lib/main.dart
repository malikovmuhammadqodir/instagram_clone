
import 'package:get/get.dart';
import 'package:insta_clone/config/imports.dart';
import 'package:insta_clone/pages/main_page..dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage() 
    );
  }

}