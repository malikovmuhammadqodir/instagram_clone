import 'package:insta_clone/config/imports.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button(
      {super.key,
      this.text = 'text',
      this.backColor = Colors.red,
      this.textColor = Colors.black});
  String text;
  Color textColor;
  Color backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: backColor),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w700, color: textColor)),
    );
  }
}
