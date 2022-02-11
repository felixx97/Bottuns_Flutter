import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? titlesize;
  final bool disabel;
  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.disabel = false,
    this.titlesize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabel ? null : onPressed,
      child: Text(title),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) return Colors.blue;
          if (states.contains(MaterialState.pressed)) return Colors.indigo;
          return Colors.brown;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed))
            return TextStyle(
              fontSize: titlesize != null ? titlesize! * 2 : 28,
            );
          return TextStyle(fontSize: titlesize);
        }),
      ),
    );
  }
}
