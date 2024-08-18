import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/common/helpers/is_dark_mode.dart';
import 'package:music_app/common/widget/appbar/app_bar.dart';
import 'package:music_app/common/widget/button/basic_button.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/assets/app_vectors.dart';
import 'package:music_app/core/configs/theme/app_color.dart';
import 'package:music_app/presentation/auth/pages/signin.dart';
import 'package:music_app/presentation/auth/pages/signup.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG
            )
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                   const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
              
                  const SizedBox(
                    height: 21,
                  ),
                   const Text(
                    'Enjoy Listening To Music Enjoy Listening To MusicEnjoy Listening To MusicEnjoy Listening To MusicEnjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
              
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(
                            builder : (BuildContext context ) => const Signup()
                          )
                          );
                        }, 
                        title: 'Register'
                        ),
                      ),
                      const SizedBox(
                        width:20,
                      ),

                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                        Navigator.push(context, 
                          MaterialPageRoute(
                            builder : (BuildContext context ) => const Signin()
                          )
                          );
                        }, 
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: context.isDarkMode ? Colors.white : Colors.black 
                          ),
                        )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }
}