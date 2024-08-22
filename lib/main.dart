import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pulse/Core/Network/Local/local_string.dart';

import 'Core/Network/Local/cash_helper.dart';
import 'Core/Network/service_locator.dart';
import 'Config/Themes/themes_app.dart';
import 'Core/bloc_observer.dart';
import 'Features/Main/presentation/manager/main_cubit.dart';
import 'Features/Main/presentation/manager/main_states.dart';
import 'Features/Main/presentation/pages/main_screen.dart';

// Pending Adding in Themes [bottomBar , AppBar ,scaColor,..........  ]
// Pending Colors..
// Pending themes..
//-------------------------------------------------------
//!! remove
//!! favourite
//-----------------------------
// Pending view&&update
//-----------------------------
// ^ Maybe
// Pending add some item in appbar as [logo,name,....]

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  setupLocator();
  Bloc.observer = MyBlocObserver();
  final bool model = CashHelper.getData(key: LocalString.modeDark) ?? false;
  runApp(Myapp(
    model: model,
  ));
}

class Myapp extends StatelessWidget {
  final bool model;

  const Myapp({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<MainCubit>()
                ..changeThemes(model)
                ..fetchNotes())
        ],
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            return MaterialApp(
              themeMode:
                  MainCubit.get(context).dark ? ThemeMode.dark : ThemeMode.light,
              darkTheme: themeDark(context),
              debugShowCheckedModeBanner: false,
              home: const MainView(),
              theme: themeLight(context),
            );
          },
        ));
  }
}
