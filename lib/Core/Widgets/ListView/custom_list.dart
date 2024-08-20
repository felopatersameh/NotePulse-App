import 'package:flutter/material.dart';import '../../../Features/Main/data/models/notes_model.dart';import '../build_slideable.dart';class ListViewNotes extends StatefulWidget {  final List<NotesModel> notes;  final Duration animationDuration;  final bool? removeItem;  const ListViewNotes({    super.key,    required this.notes,    this.animationDuration = const Duration(milliseconds: 500),    this.removeItem,  });  @override  State<ListViewNotes> createState() => _ListViewNotesState();}class _ListViewNotesState extends State<ListViewNotes> {  late final GlobalKey<AnimatedListState> keyList;  @override  void initState() {    super.initState();    keyList = GlobalKey<AnimatedListState>();  }  @override  Widget build(BuildContext context) {    if (widget.notes.isEmpty) {      return const Center(child: Text('No notes available'));    }    return AnimatedList(      key: keyList,      initialItemCount: widget.notes.length,      itemBuilder: (context, index, animation) {        return BuildSlideable(          removeItem: widget.removeItem,          index: index,          notes: widget.notes,          keyList: keyList,        );      },    );  }}