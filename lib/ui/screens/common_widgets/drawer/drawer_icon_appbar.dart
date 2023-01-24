import 'package:flutter/material.dart';

class DrawerIconAppBar extends StatelessWidget {
  const DrawerIconAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.slideshow),
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());
        Scaffold.of(context).openDrawer();}
    );
  }
}