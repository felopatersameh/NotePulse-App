import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pulse/Core/Widgets/notes.dart';
import 'package:note_pulse/Features/Main/presentation/manager/cubit.dart';
import 'package:note_pulse/Features/Main/presentation/manager/states.dart';

import '../widgets/custom_app_bar.dart';

var keyScaffold = GlobalKey<ScaffoldState>();

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // return  Scaffold(
    //     appBar: customAppBar(context),
    //     key: keyScaffold,
    //     body: const NotesScreen(),
    //     floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    //     floatingActionButton: const CustomFloatingBar(),
    //     drawer: drawer(context));

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is SuccessesGetDatabase) {
          return Scaffold(
              appBar: customAppBar(context),
              body: SafeArea(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.notes.length,
                  itemBuilder:(context, index) =>
                      Notes(note: state.notes[index], index: index),
                ),
              ));
        } else {
          return Container();
        }
      },
    );
  }
}
