
import 'package:flutter/material.dart';

import 'package:printmate/src/constants/sizes.dart';


class FormHeaderWidget extends StatelessWidget {

  final String image, title, subtitle;
  
  const FormHeaderWidget({
    super.key,
   
    required this.image, 
    required this.title, 
    required this.subtitle,
  });

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2,),
        Text(title, style: TextStyle(fontSize:headlineSize, fontWeight: FontWeight.bold ),),
        Text(subtitle),
      ],
    );
  }
}
