import 'package:example/box/bloc/box_screen_bloc.dart';
import 'package:example/core/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoxScreen extends StatelessWidget {
  const BoxScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BoxScreenBloc(),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              boxTranzition(),
              const Spacer(),
              buildButtonSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget boxTranzition() {
    return BlocBuilder<BoxScreenBloc, BoxScreenState>(
      buildWhen: (previous, current) => previous.axisCurrent != current.axisCurrent,
      builder: (context, state) {
        return AnimatedSlide(
          duration: state.duration,
          offset: state.axisCurrent == MainAxisAlignment.start
              ? const Offset(0, 0)
              : Offset((40 / MediaQuery.of(context).size.width - 1) * -1, 0),
          child: Row(
            key: UniqueKey(),
            //mainAxisAlignment: state.axisCurrent,
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.red,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildButtonSection() {
    return BlocBuilder<BoxScreenBloc, BoxScreenState>(
      buildWhen: (previous, current) =>
          previous.axisCurrent != current.axisCurrent ||
          previous.rightButtonActive != current.rightButtonActive ||
          previous.leftButtonActive != current.leftButtonActive,
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: !state.leftButtonActive
                ? null
                : () => context.sendEvent<BoxScreenBloc>(const BoxScreenEvent.movePressed()),
            child: const Text('Влево'),
          ),
          const SizedBox(width: 100),
          ElevatedButton(
            onPressed: !state.rightButtonActive
                ? null
                : () => context.sendEvent<BoxScreenBloc>(const BoxScreenEvent.movePressed()),
            child: const Text('Вправо'),
          ),
        ],
      ),
    );
  }
}
