
import 'package:flutter/material.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(loginImage), height: size.height * 0.2,),
        Text(uLoginTitle, style: TextStyle(fontSize:headlineSize, fontWeight: FontWeight.bold ),),
        Text(uLoginSubtitle),
      ],
    );
  }
}
