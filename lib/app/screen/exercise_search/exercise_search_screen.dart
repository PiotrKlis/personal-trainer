import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_trainer/app/model/exercise.dart';
import 'package:personal_trainer/app/screen/exercise_search/bloc/exercise_search_add_exercise_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/bloc/exercise_search_tags_bloc.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_add_exercise_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/event/exercise_search_tags_event.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_add_exercise_state.dart';
import 'package:personal_trainer/app/screen/exercise_search/state/exercise_search_tags_state.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/app/util/logger.dart';
import 'package:personal_trainer/app/widget/error_view.dart';
import 'package:personal_trainer/app/widget/video_player_widget.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'bloc/exercise_search_bloc.dart';
import 'state/exercise_search_state.dart';

class ExerciseSearchScreen extends StatelessWidget {
  final DateTime selectedDate;
  final String clientId;
  final int listLength;

  ExerciseSearchScreen(
      {Key? key,
      required this.selectedDate,
      required this.clientId,
      required this.listLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  ExerciseSearchBloc(ExerciseSearchState.initial())),
          BlocProvider(
              create: (context) => ExerciseSearchAddExerciseBloc(
                  ExerciseSearchAddExerciseState.initial(), listLength)),
          BlocProvider(
              create: (context) => ExerciseSearchTagsBloc(
                  ExerciseSearchTagsState.initial(),
                  context.read<ExerciseSearchBloc>()))
        ],
        child: Scaffold(
          appBar: AppBar(
              title: Text(
            AppLocalizations.of(context)!.search_exercises_screen_title,
          )),
          body: SearchScreenContent(
            selectedDate: selectedDate,
            clientId: clientId,
            listLength: listLength,
          ),
        ));
  }
}

class SearchScreenContent extends StatelessWidget {
  final selectedDate;
  final clientId;
  final listLength;

  const SearchScreenContent({this.selectedDate, this.clientId, this.listLength})
      : super();

  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();

    return Column(
      children: [
        _listenForAddedExercises(),
        SearchWidget(searchController: _searchController),
        TagFilterChips(),
        SearchResultList(
            selectedDate: selectedDate,
            clientId: clientId,
            searchController: _searchController)
      ],
    );
  }
}

BlocListener _listenForAddedExercises() {
  return BlocListener<ExerciseSearchAddExerciseBloc,
      ExerciseSearchAddExerciseState>(
    listener: (context, state) {
      state.when(exerciseAddedSuccess: (exerciseName) {
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(
                milliseconds: DurationConst.snackbarVisibilityDuration),
            content: Text(
                "$exerciseName ${AppLocalizations.of(context)!.exercise_added_message}")));
      }, exerciseAddedFailure: (exerciseName) {
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(
                milliseconds: DurationConst.snackbarVisibilityDuration),
            content: Text(
                "$exerciseName ${AppLocalizations.of(context)!.exercise_add_failure_message}")));
      }, initial: () {
        return Container();
      });
    },
    child: Container(),
  );
}

class TagFilterChips extends StatelessWidget {
  const TagFilterChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseSearchTagsBloc, ExerciseSearchTagsState>(
        builder: (context, state) {
      return state.when(
          initial: () {
            context
                .read<ExerciseSearchTagsBloc>()
                .add(ExerciseSearchTagsEvent.getTags());
            return Container();
          },
          content: (tags) => _createTags(tags),
          error: (error) {
            Log.d(error);
            return Container();
          });
    });
  }

  Wrap _createTags(List<String> tags) {
    return Wrap(
      spacing: Dimens.smallPadding,
      children: tags.map((element) {
        return TagFilterChip(name: element);
      }).toList(),
    );
  }
}

class TagFilterChip extends StatefulWidget {
  final String name;

  const TagFilterChip({required this.name}) : super();

  @override
  _TagFilterChipState createState() => _TagFilterChipState();
}

class _TagFilterChipState extends State<TagFilterChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        backgroundColor: Colors.grey,
        label: Text(widget.name),
        selected: _isSelected,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            _isSelected = selected;
            if (selected) {
              context.read<ExerciseSearchBloc>().add(
                  ExerciseSearchEvent.filterClick(filterName: widget.name));
            } else {
              context.read<ExerciseSearchBloc>().add(
                  ExerciseSearchEvent.filterClick(filterName: widget.name));
            }
          });
        });
  }
}

String? previousSearchInput;

class SearchWidget extends StatelessWidget {
  final searchController;

  SearchWidget({required this.searchController});

  @override
  Widget build(BuildContext context) {
    searchController.addListener(() {
      if (searchController.text != previousSearchInput) {
        previousSearchInput = searchController.text;
        if (searchController.text.isEmpty) {
          context
              .read<ExerciseSearchBloc>()
              .add(ExerciseSearchEvent.emptySearch());
        } else {
          context.read<ExerciseSearchBloc>().add(
              ExerciseSearchEvent.searchForInput(input: searchController.text));
        }
      }
    });
    return Row(children: [
      Padding(
          padding: const EdgeInsets.all(Dimens.biggerPadding),
          child: Icon(Icons.search)),
      Expanded(
        child: TextField(
            controller: searchController,
            decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.search)),
      ),
    ]);
  }
}

class SearchResultList extends StatelessWidget {
  final selectedDate;
  final clientId;
  final searchController;

  SearchResultList(
      {required this.selectedDate,
      required this.clientId,
      required this.searchController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseSearchBloc, ExerciseSearchState>(
        builder: (context, state) {
      return state.when(
          loading: () => CircularProgressIndicator(),
          initial: () {
            context
                .read<ExerciseSearchBloc>()
                .add(ExerciseSearchEvent.emptySearch());
            return CircularProgressIndicator();
          },
          content: (exercises) => _buildExpansionTiles(exercises, context),
          error: (error) =>
              ErrorView.error(AppLocalizations.of(context)!.error),
          filterReload: () {
            if (searchController.text.isEmpty) {
              context
                  .read<ExerciseSearchBloc>()
                  .add(ExerciseSearchEvent.emptySearch());
            } else {
              context.read<ExerciseSearchBloc>().add(
                  ExerciseSearchEvent.searchForInput(
                      input: searchController.text));
            }
            return CircularProgressIndicator();
          });
    });
  }

  Center _handleNoExercises(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(Dimens.normalPadding),
            child: ErrorView.error(
                AppLocalizations.of(context)!.search_exercises_no_exercises)));
  }

  Widget _buildExpansionTiles(List<Exercise> exercises, BuildContext context) {
    if (exercises.isEmpty) {
      return _handleNoExercises(context);
    }
    return Expanded(
      child: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) =>
              _buildExpansionTile(exercises[index], context)),
    );
  }

  Widget _buildExpansionTile(Exercise exercise, BuildContext context) {
    return Card(
        elevation: 1,
        child: ExpansionTile(
            leading: Icon(Icons.fitness_center),
            title: Text(
              exercise.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add_rounded),
              onPressed: () {
                context.read<ExerciseSearchAddExerciseBloc>().add(
                    ExerciseSearchAddExerciseEvent.addExercise(
                        exerciseId: exercise.id,
                        selectedDate: selectedDate,
                        clientId: clientId,
                        exerciseName: exercise.title));
              },
            ),
            children: [
              Divider(),
              VideoPlayerWidget(playbackId: exercise.playbackId),
              Padding(
                  padding: const EdgeInsets.all(Dimens.smallPadding),
                  child: Container(
                      height: Dimens.tagsRowHeight,
                      child: Flex(direction: Axis.vertical, children: [
                        Expanded(
                            child: ListView.builder(
                          key: PageStorageKey(exercise.id),
                          scrollDirection: Axis.horizontal,
                          itemCount: exercise.tags.length,
                          itemBuilder: (BuildContext context, int tagIndex) {
                            return Row(children: [
                              Text(
                                exercise.tags[tagIndex],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: Dimens.tagsRowDividerWidth)
                            ]);
                          },
                        ))
                      ])))
            ]));
  }

  bool isExpanded(Exercise exercise, List<String> listOfExpandedExercises) {
    return listOfExpandedExercises.contains(exercise.id);
  }
}
