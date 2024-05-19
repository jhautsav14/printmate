

import 'package:flutter/material.dart';
import 'package:printmate/src/constants/sizes.dart';


class ForgotPasswordBtnWidget extends StatelessWidget {

  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;
  const ForgotPasswordBtnWidget({
    super.key, required this.btnIcon, required this.title, required this.subtitle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(uSize20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(uSize20-10),
          color: Colors.grey.shade200
        ),
      
        child: Row(
          
          children: [
            Icon(btnIcon, size: 60,),
            const SizedBox(width: uSize20-10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(subtitle),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}