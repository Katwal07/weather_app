import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/auth/presentation/register.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF42C83C),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 41),
            child: Column(
              children: [
                _signinText(),
                const SizedBox(
                  height: 98,
                ),
                _emailTextField(),
                const SizedBox(
                  height: 10,
                ),
                _passwordTextField(),
                const SizedBox(
                  height: 20,
                ),
                _createAccountButton(),
                 const SizedBox(
                  height: 40,
                ),
                _doYouHaveAccountText(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signinText() {
    return const Center(
      child: Text(
        'Sign In',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff383838),
        ),
      ),
    );
  }

  _emailTextField() {
    return const SizedBox(
      height: 80,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          label: Text(
            'Enter Username or Email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff383838),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(width: 1, color: Color(0XFF000000))),
        ),
      ),
    );
  }

  _passwordTextField() {
    return const SizedBox(
      height: 80,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          label: Text(
            'Password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff383838),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(width: 1, color: Color(0XFF000000))),
        ),
      ),
    );
  }

  _createAccountButton() {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF42C83C),
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
        ),
        onPressed: () {},
        child: const Text(
          'Sign In',style: TextStyle(color: Color(0XFFFFFFFF),fontSize: 20),
        ),
      ),
    );
  }
  
  _doYouHaveAccountText(BuildContext context) {

    return RichText(text:
     TextSpan(
      children: [
        const TextSpan(
          text: 'Not A Member?',style:  TextStyle(color: Color(0XFF383838),fontSize: 18),),
         TextSpan(

          recognizer: TapGestureRecognizer()..onTap = (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const RegisterScreen()));
          },
          text: ' Register Now',style: const TextStyle(color: Color(0XFF288CE9),fontSize: 18),),
      ]
    ),);
  }

}
