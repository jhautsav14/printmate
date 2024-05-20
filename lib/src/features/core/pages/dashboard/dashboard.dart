import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_sharp, size: uSize20+10,),
        title: Text(uAppName, ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: uSize20-10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(uSize20+10),
              child: Image(image: AssetImage(profileImage), width: 50,)
            ),
          )
        ],


      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(uDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dashboardTitle, style: TextStyle(fontSize: uSize24, fontWeight: FontWeight.bold),),
              Text(dashboardSubtitle, style: TextStyle(color: Colors.grey[800]),),

              const SizedBox(height: uSize20,),
              Container(
                decoration: const BoxDecoration(border: Border(left: BorderSide(width: 4, color: Colors.deepPurple)),),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(uDashboardSearch, style: TextStyle(fontSize: uSize24, color: Colors.grey),),
                    const Icon(Icons.mic, color: Colors.deepPurple,size: uSize20+5
                    ,)
                  ],

                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}