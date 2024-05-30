
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileMenuWidget extends StatelessWidget {


  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;
  
  const ProfileMenuWidget({
    super.key, required this.title, required this.icon, required this.onPress, required this.endIcon, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.deepPurple.withOpacity(0.1)
        ),
    
        child: Icon(icon, color: Colors.deepPurpleAccent,),
    
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      trailing: endIcon? Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1)
        ),
    
        child: Icon(LineAwesomeIcons.angle_right_solid, color: Colors.deepPurple,),
    
      ): null,
    );
  }
}