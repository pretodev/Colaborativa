import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

typedef Instance = T Function<T>();

abstract class PageWidget<Args> extends StatelessWidget {
  PageWidget({Key? key}) : super(key: key);

  final _providers = <SingleChildWidget>[];

  Widget get view;

  void binding(Args args, Instance i);

  void bind<T>(T instance, {bool lazy = false}) {
    _providers.add(Provider<T>(
      create: (_) => instance,
      lazy: lazy,
    ));
  }

  void bindNotifier<T extends ChangeNotifier?>(
    T instance, {
    bool lazy = false,
  }) {
    _providers.add(ChangeNotifierProvider<T>(
      create: (_) => instance,
      lazy: lazy,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Args;
    binding(args, context.read);
    return MultiProvider(
      providers: _providers,
      child: view,
    );
  }
}
