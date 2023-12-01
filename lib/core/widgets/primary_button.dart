import 'package:flutter/material.dart';
import 'package:movie_recommended/core/constants.dart';

class PrimaryButton extends StatelessWidget{
  final VoidCallback onPressed;
  final String text;
  final double width;

  const PrimaryButton({super.key, required this.onPressed, required this.text, this.width = double.infinity});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TextButton(
        onPressed: onPressed,
          style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular((kBorderRadius/2).toDouble())),
          fixedSize: Size(width,
          48)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(text,style: Theme.of(context).textTheme.labelLarge,)],),
        ),
    );
  }

}