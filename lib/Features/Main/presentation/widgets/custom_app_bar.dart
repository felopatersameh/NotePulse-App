import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(context, String title) => AppBar(
      title: InkWell(onTap: () {}, child: Text(title)),
    );
