import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disabel: false,
          onPressed: () {},
          title: "Custom BTN",
          titlesize: 18,
        ),
      ),
    );
  }
}
