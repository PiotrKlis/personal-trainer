import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:personal_trainer/app/screen/empty/bloc/empty_bloc.dart';
import 'package:personal_trainer/app/screen/empty/state/empty_state.dart';

class TrainerSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmptyBloc(EmptyState.initial()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Personal Trainer"),
        ),
        body: TrainerSearchScreenView(),
      ),
    );
  }
}

class TrainerSearchScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: null,
            child: Text("Search for trainers"),
          ),
        ),
        Text("Best Trainers this month!"),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ExpansionTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.face),
                  title: Text("Trener w okularach"),
                  subtitle: Column(
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              "Zapraszam na treningi personalne w N11 we Wrocławiu przy ulicy Nektarowej. Plany treningowe, treningi online, trening personalny. To jest ostatnia linijka prawda?",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(Icons.flag_circle),
                            Icon(Icons.flag_sharp),
                            Icon(Icons.flag_outlined),
                            Icon(Icons.flag_rounded),
                            Icon(Icons.emoji_flags),
                            Icon(Icons.outlined_flag_outlined),
                          ],)
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.music_note),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(Icons.offline_share),
                      ),
                    ],
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Jestem super fajnym gościem, mnóstwo doświadczenia, ekstra treningi. Tylko pozazdrościć. Bardoz długi opis na temat usług, charkateru treningu, współpracy, kontaktu i wszystkiego istotnego. Jestem super fajnym gościem, mnóstwo doświadczenia, ekstra treningi. Tylko pozazdrościć. Bardoz długi opis na temat usług, charkateru treningu, współpracy, kontaktu i wszystkiego istotnego. "),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Miesięczny plan treningowy: 80 zl"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pojedynczy trening online: 110 zl"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text("Typy treningu:"),
                    ),
                    Row(
                      children: [
                        Chip(avatar: Icon(Icons.music_note),label: Text("Siła")),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Chip(avatar: Icon(Icons.offline_share), label: Text("Stretching")),
                        ),
                        Chip(avatar: Icon(Icons.kebab_dining),label: Text("Fitness")),
                      ],
                    ),
                    Center(
                      child: RatingBar(
                        initialRating: 2,
                        ignoreGestures: true,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: Icon(Icons.star),
                          half: Icon(Icons.star_half),
                          empty: Icon(Icons.star_rate_outlined),
                        ),
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        onRatingUpdate: (rating) {
                          // setState(() {
                          //   _rating =_rating rating;
                          // });
                        },
                        updateOnDrag: true,
                      ),
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text("KONTAKT"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: null,
                            child: Text("ZAPYTAJ O TRENING"),
                          ),
                        ),
                      )
                    ], mainAxisAlignment: MainAxisAlignment.center)
                  ],
                ),
              );
            }),
        Text("Best trainers in your country"),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text("I am card number $index"),
              );
            }),
        Text("Trainers in your area"),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text("I am card number $index"),
              );
            }),
      ],
    );
  }
}
