import 'package:flutter/material.dart';
import 'package:movie_recommended/core/constants.dart';
import 'package:movie_recommended/core/widgets/primary_button.dart';
import 'package:movie_recommended/features/movie_flow/genre/genre.dart';
import 'package:movie_recommended/features/movie_flow/genre/list_card.dart';

class GenereScreen extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const GenereScreen(
      {super.key, required this.nextPage, required this.prevPage});

  @override
  _GenreScreenState createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenereScreen> {
  List<Genre> genres = [
    const Genre(name: 'Action'),
    const Genre(name: 'Comedy'),
    const Genre(name: 'Drama'),
    const Genre(name: 'Thriller'),
    const Genre(name: 'Anime'),
    const Genre(name: 'Family'),
    const Genre(name: 'Romance'),
    const Genre(name: 'Sci-fi'),
  ];

  void toggleSelected(Genre genre) {
    List<Genre> updatedGenres = [
      for (final oldGenre in genres)
        if (oldGenre == genre) oldGenre.toggleSelected() else oldGenre
    ];

    setState(() {
      genres = updatedGenres;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: widget.prevPage),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Let's start with a genre",
              style: theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    itemBuilder: (context, index) {
                      Genre genre = genres[index];
                      return ListCard(
                          genre : genre,
                          onTap: () => toggleSelected(genre)
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: kListItemSpacing,
                        ),
                    itemCount: genres.length)),
            PrimaryButton(onPressed: widget.nextPage, text: "Continue"),
            const SizedBox(
              height: kMediumSpacing,
            )
          ],
        ),
      ),
    );
  }
}
