import 'package:flutter/material.dart';

import '../widgets/Drawer/drawer_item.dart';
import '../widgets/FloatingAction/custom_floating.dart';
import '../widgets/all_notes_screen.dart';
import '../widgets/custom_app_bar.dart';

var keyScaffold = GlobalKey<ScaffoldState>();

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customAppBar(context),
        key: keyScaffold,
        body: const NotesScreen(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const CustomFloatingBar(),
        // bottomNavigationBar: const CustomButtonNavigationBar(),
        drawer: drawer(context));
  }
}
