import 'package:flutter/material.dart';
import 'package:movie_recommended/core/constants.dart';
import 'package:movie_recommended/features/movie_flow/genre/genre.dart';

class ListCard extends StatelessWidget {
  final Genre genre;

  final VoidCallback onTap;

  const ListCard({super.key, required this.genre, required this.onTap});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return UnconstrainedBox(
      child: Material(
        color: genre.isSelected
            ? theme.primaryColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(kBorderRadius),
          onTap: onTap,
          child: Container(
            width: 140,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
            child: Text(
              genre.name,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
