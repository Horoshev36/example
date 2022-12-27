import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ContextExtensions on BuildContext {
  void sendEvent<B extends Bloc>(dynamic event) {
    read<B>().add(event);
  }
}
