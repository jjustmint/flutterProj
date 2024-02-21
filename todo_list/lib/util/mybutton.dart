import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed; //ทุกครั้งที่กดทำบางอย่างโดยที่ไม่มีการส่งค่า เช่น print ใช้เพื่อคุยกันกับ widget อื่น
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color : Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}