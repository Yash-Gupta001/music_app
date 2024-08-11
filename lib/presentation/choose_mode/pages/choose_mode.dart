// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/common/widget/button/basic_button.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/assets/app_vectors.dart';
import 'package:music_app/core/configs/theme/app_color.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 50
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.chooseModeBG,
                )
              )
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical:40
            ),
            child: Column(
                children: [
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: SvgPicture.asset(
                  //     AppVectors.logo
                  //   ),
                  // ),
                  // Spacer(),
                  // const Text(
                  //   'Enjoy listening to music',
                  //    style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //     fontSize: 18
                  //    ),
                  //   ),
                  //   SizedBox(height: 21,),
            
                  // const Text(
                  //   'Enjoy listening to music Enjoy listening to musicEnjoy listening to musicEnjoy listening to musicEnjoy listening to musicEnjoy listening to musicEnjoy listening to musicEnjoy listening to music',
                  //    style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //     color: AppColors.grey,
                  //     fontSize: 14
                  //    ),
                  //    textAlign: TextAlign.center,
                  //   ),
                  // SizedBox(height: 20,),
                  // BasicButton(onPressed: (){
                  //   Navigator.push(context, 
                  //   MaterialPageRoute(builder: (BuildContext context) => ChooseModePage()
                  //   )
                  //   );
                  // }, title: 'Get started'
                  // ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}