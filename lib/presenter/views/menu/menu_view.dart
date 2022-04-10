import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import 'menu_controller.dart';
import 'menu_store.dart';

class MenuView extends ModxView<MenuController, MenuStore> {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(),
    );
  }
}
