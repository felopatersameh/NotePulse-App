import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Widgets/ListView/builder_view_list_notes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuilderViewListNotes(
      statusView: StatusView.all,
    );
  }
}
