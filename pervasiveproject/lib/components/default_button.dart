import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  // final VoidCallback press;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // make the border longer
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: press, 
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
          ),
        ),
    );
  }
}