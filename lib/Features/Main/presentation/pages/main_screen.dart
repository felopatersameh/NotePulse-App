import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pulse/Features/Main/presentation/manager/main_cubit.dart';
import 'package:note_pulse/Features/Main/presentation/manager/main_states.dart';

import '../widgets/Drawer/drawer_item.dart';
import '../widgets/FloatingAction/custom_floating.dart';
import '../widgets/custom_app_bar.dart';

var keyScaffold = GlobalKey<ScaffoldState>();

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
            key: keyScaffold,
            appBar: customAppBar(
                context,
                MainCubit.get(context)
                    .nameScreens[MainCubit.get(context).numberScreen]),
            body: MainCubit.get(context)
                .screens[MainCubit.get(context).numberScreen],
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: const CustomFloatingBar(),
            drawer: drawer(context));
      },
    );
  }
}
