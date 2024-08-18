import 'package:flutter/material.dart';
import 'package:note_pulse/Core/Widgets/custom_animated_list_item.dart';
import 'package:note_pulse/Features/Main/presentation/manager/cubit.dart';

import '../../../../Core/Widgets/custom_view_list.dart';
import '../../../../Core/Widgets/notes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: AllNotesView(
            item: AppCubit.get(context).dataFavorites.length,
            child: (context, index) => AnimatedListItem(
              index: index,
              note: AppCubit.get(context).dataFavorites[index],
              child: Notes(
                index: index,
                note: AppCubit.get(context).dataFavorites[index],
              ),
            )),
      ),
    );
  }
}
