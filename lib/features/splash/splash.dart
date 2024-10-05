import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/features/auth/presentation/register.dart';

import 'bloc/splash_cubit.dart';
import 'bloc/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: const  Color(0XFF42C83C),
        body: Center(
          child: SizedBox(
            height: 120,
            width: 120,
            child: SvgPicture.asset("assets/vectors/weather.svg")),
        ),
      ),
    );
  }
}
