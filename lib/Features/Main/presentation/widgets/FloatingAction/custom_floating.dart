import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import '../../../../../Core/Widgets/custom_diolog.dart';import '../../../../../Core/Widgets/custom_scaffold_messenger.dart';import '../../manager/main_cubit.dart';import '../../manager/main_states.dart';import 'floating_process.dart';class CustomFloatingBar extends StatefulWidget {  const CustomFloatingBar({super.key});  @override  State<CustomFloatingBar> createState() => _CustomFloatingBarState();}class _CustomFloatingBarState extends State<CustomFloatingBar>    with SingleTickerProviderStateMixin {  late AnimationController _controller;  @override  void initState() {    super.initState();    _controller = AnimationController(vsync: this);  }  @override  void dispose() {    _controller.dispose();    super.dispose();  }  @override  Widget build(BuildContext context) {    return BlocConsumer<MainCubit, MainState>(      listener: (context, state) {        if (state is NotesError) {          showSnackBar(context, state.message);        }      },      builder: (context, state) {        return FloatingActionButton(            shape: const CircleBorder(),            onPressed: () => pressButton(context),            child: Icon(MainCubit.get(context).iconFloating));      },    );  }}