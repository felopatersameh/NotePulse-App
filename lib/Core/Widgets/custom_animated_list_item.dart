import 'package:flutter/material.dart';
import 'package:note_pulse/Core/Resources/icon.dart';
import 'package:note_pulse/Features/Main/data/models/notes_model.dart';
import 'package:slideable/Slideable.dart';
import 'package:note_pulse/Features/Main/presentation/manager/cubit.dart';

class AnimatedListItem extends StatefulWidget {
  final Widget child;
  final NotesModel note;
  final int index;

  const AnimatedListItem(
      {super.key,
      required this.note,
      required this.child,
      required this.index});

  @override
  State<AnimatedListItem> createState() => _AnimatedListItemState();
}

class _AnimatedListItemState extends State<AnimatedListItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  var key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: _animation,
          child: ScaleTransition(
            scale: _animation,
            child: Slideable(
                // resetSlide: true,
                items: [
                  ActionItems(
                    icon: const Icon(
                      AppIcons.iconRemove,
                      color: Colors.red,
                    ),
                    onPress: () => AppCubit.get(context).removeDatabase(
                        id: widget.note.id, index: widget.index),
                    backgroudColor: Colors.transparent,
                  ),
                  ActionItems(
                    icon: const Icon(
                      AppIcons.iconAddFavorite,
                      color: Colors.green,
                    ),
                    onPress: () => AppCubit.get(context)
                        .updateFavoriteNotesDatabase(context,
                            id: widget.note.id,
                            value:
                                widget.note.favorite == 'yes' ? 'no' : 'yes'),
                    backgroudColor: Colors.transparent,
                  ),
                ],
                child: widget.child),
          ),
        );
      },
    );
  }
}
