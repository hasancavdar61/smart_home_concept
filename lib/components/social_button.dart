import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
    required this.color,
    required this.text, required this.bgColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;
  final Color color;
  final String text;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(bgColor)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              iconData,
              color: color,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black87),
            ),
          ],
        ));
  }
}
