import 'package:flutter/material.dart';
import 'package:movie_recommended/theme/palette.dart';

class MovieFlow extends StatefulWidget {
  const MovieFlow({super.key});

  @override
  _MovieFlowState createState() => _MovieFlowState();
}

class _MovieFlowState extends State<MovieFlow> {
  final pageController = PageController();

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 600), curve: Curves.easeOutCubic);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Scaffold(body: Container(color: Palette.red500)),
        Scaffold(body: Container(color: Palette.red100)),
        Scaffold(body: Container(color: Palette.red500)),
        Scaffold(body: Container(color: Palette.red100)),
        Scaffold(body: Container(color: Palette.red500)),
      ],
    );
  }
}
