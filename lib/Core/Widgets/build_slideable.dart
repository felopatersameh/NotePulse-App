import 'package:flutter/material.dart';import 'package:note_pulse/Core/Resources/icon.dart';import 'package:note_pulse/Features/Main/data/models/notes_model.dart';import 'package:note_pulse/Features/Main/presentation/manager/main_cubit.dart';import 'package:slideable/slideable.dart';import 'notes.dart';class BuildSlideable extends StatelessWidget {  final NotesModel notes;  final GlobalKey<AnimatedListState> keyList;  final int index;  const BuildSlideable(      {super.key,      required this.notes,      required this.keyList,      required this.index});  @override  Widget build(BuildContext context) {    return Slideable(      items: [        ActionItems(            icon: AppIcons.iconRemove,            onPress: () {              MainCubit.get(context).deleteNote(notes.id);              removeNoteAtIndex(index);            },            backgroudColor: Colors.transparent),        ActionItems(            icon: AppIcons.iconFavorite,            onPress: () {},            backgroudColor: Colors.transparent),      ],      child: Notes(note: notes),    );  }  void removeNoteAtIndex(int index) {    // final removedNote = widget.notes.removeAt(index);    keyList.currentState?.removeItem(      index,      (context, animation) => const SizedBox.shrink(),      duration: const Duration(milliseconds: 300),    );  }}