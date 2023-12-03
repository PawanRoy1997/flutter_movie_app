import 'package:flutter/material.dart';
import 'package:movie_recommended/core/constants.dart';
import 'package:movie_recommended/core/widgets/primary_button.dart';

class LandingScreen extends StatelessWidget {
  final VoidCallback nextPage;

  final VoidCallback previousPage;

  const LandingScreen(
      {super.key, required this.nextPage, required this.previousPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(
            "Let's find a movie",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset('assets/images/undraw_horror_movie.png'),
          const Spacer(),
          PrimaryButton(
            onPressed: nextPage,
            text: 'Get Started',
          ),
          const SizedBox(
            height: kMediumSpacing,
          )
        ],
      )),
    );
  }
}
