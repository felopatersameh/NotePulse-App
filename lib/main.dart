import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Core/Resources/themes_app.dart';
import 'Core/bloc_observer.dart';
import 'Features/Main/presentation/manager/cubit.dart';
import 'Features/Main/presentation/manager/states.dart';
import 'Features/Main/presentation/pages/screen_of_start.dart';

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

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => AppCubit())],
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return MaterialApp(
              themeMode:
                  AppCubit.get(context).dark ? ThemeMode.dark : ThemeMode.light,
              darkTheme: themeDark(context),
              debugShowCheckedModeBanner: false,
              home: const HomeLayout(),
              theme: themeLight(context),
            );
          },
        ));
  }
}
