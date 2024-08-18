import 'package:flutter/material.dart';
import 'package:music_app/common/widget/appbar/app_bar.dart';
import 'package:music_app/common/widget/button/basic_button.dart';
import 'package:music_app/presentation/auth/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  const BasicAppbar(),
      body:Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
      
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _registerText(),
          const SizedBox(height: 50,),
          _fullNameField(context),
          const SizedBox(height: 20,),
          _emailField(context),
          const SizedBox(height: 20,),
          _passwordField(context),
          const SizedBox(height: 20,),
          BasicButton(
            onPressed: (){

          }, 
          title: 'Create Account'),
          _sigupText(context)
        ],
      ),
      ),
    );
  }
  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }
  
  Widget _fullNameField(BuildContext context) {
    return TextField(
      //controller: _fullName,
      decoration: const InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      //controller: _email,
      decoration: const InputDecoration(
        hintText: 'Enter Email'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

   Widget _passwordField(BuildContext context) {
    return TextField(
      //controller: _password,
      decoration: const InputDecoration(
        hintText: 'Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _sigupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not a member ?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Signup()
                )
              );
            },
            child: const Text(
              'Register'
            )
          )
        ],
      ),
    );
  }
}