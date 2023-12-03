import 'package:flutter/material.dart';
import 'package:movie_recommended/core/constants.dart';
import 'package:movie_recommended/core/widgets/primary_button.dart';

class RatingScreen extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const RatingScreen(
      {super.key, required this.nextPage, required this.prevPage});

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  int rating = 5;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: widget.prevPage,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Select a minimum rating\nranging from 1-10",
              style: theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${rating.ceil()}",
                  style: theme.textTheme.displayLarge,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 62,
                )
              ],
            ),
            const Spacer(),
            Slider(
              value: rating.toDouble(),
              onChanged: (value) => setState(() {
                rating = value.toInt();
              }),
              min: 1,
              max: 10,
              divisions: 9,
              label: "${rating.ceil()}",
              activeColor: theme.primaryColor,
              inactiveColor: Colors.white,
            ),
            const Spacer(),
            PrimaryButton(onPressed: widget.nextPage, text: "Yes Please"),
            const SizedBox(
              height: kMediumSpacing,
            )
          ],
        ),
      ),
    );
  }
}
