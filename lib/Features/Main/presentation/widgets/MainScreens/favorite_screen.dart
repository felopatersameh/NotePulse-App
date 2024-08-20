import 'package:flutter/material.dart';

import '../../../../../Core/Widgets/ListView/builder_view_list_notes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuilderViewListNotes(
      removeItem: true,
      statusView: StatusView.favorite,
    );
  }
}
