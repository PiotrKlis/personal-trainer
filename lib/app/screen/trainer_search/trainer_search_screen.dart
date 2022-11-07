import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:personal_trainer/app/screen/empty/bloc/empty_bloc.dart';
import 'package:personal_trainer/app/screen/empty/state/empty_state.dart';
import 'package:share_plus/share_plus.dart';

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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: null,
              child: Text("Search for trainers"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best Trainers this month!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                double _rating = 0.0;
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
                                padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                              child: Row(
                                children: [
                                  Icon(Icons.flag_circle),
                                  Icon(Icons.flag_sharp),
                                  Icon(Icons.flag_outlined),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text("Plan miesięczny: 80 zł"),
                                  ),
                                ],
                              )),
                          Row(
                            children: [
                              RatingBar(
                                itemSize: 16.0,
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
                                  //   _rating = rating;
                                  // });
                                },
                                updateOnDrag: true,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(_rating.toString()),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Chip(
                                  avatar: Icon(Icons.music_note),
                                  label: Text("Siła")),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Chip(
                                    avatar: Icon(Icons.offline_share),
                                    label: Text("Stretching")),
                              ),
                            ],
                            mainAxisSize: MainAxisSize.min,

                          ),
                        ],
                      ),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Jestem super fajnym gościem, mnóstwo doświadczenia, ekstra treningi. Tylko pozazdrościć. Bardoz długi opis na temat usług, charkateru treningu, współpracy, kontaktu i wszystkiego istotnego. Jestem super fajnym gościem, mnóstwo doświadczenia, ekstra treningi. Tylko pozazdrościć. Bardoz długi opis na temat usług, charkateru treningu, współpracy, kontaktu i wszystkiego istotnego. "),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Share.share('check out my website https://example.com', subject: 'Look what I made!');
                              },
                              child: Text("KONTAKT"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                child: Text("ZAPYTAJ O TRENING"),
                              ),
                            ),
                          )
                        ], mainAxisAlignment: MainAxisAlignment.center)
                      ],
                    ),
                    );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best Trainers in your country!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Text("I am card number $index"),
                );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Trainers in your area",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Text("I am card number $index"),
                );
              }),
        ],
      ),
    );
  }
}
