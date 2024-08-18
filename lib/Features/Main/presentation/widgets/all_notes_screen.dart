import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Widgets/custom_animated_list_item.dart';
import '../../../../Core/Widgets/notes.dart';
import '../../../../Core/Widgets/custom_view_list.dart';
import '../manager/cubit.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AllNotesView(
        item: AppCubit.get(context).dataNotes.length,
        child: (context, index) => AnimatedListItem(
              note: AppCubit.get(context).dataNotes[index],
              index: index,
              child: Notes(
                index: index,
                note: AppCubit.get(context).dataNotes[index],
              ),
            ));
  }
}
