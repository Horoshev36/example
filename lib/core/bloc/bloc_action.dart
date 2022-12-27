
abstract class BlocAction {
  DateTime dateTime = DateTime.now();
}

class HideKeyboard extends BlocAction {}

class ShowLoader extends BlocAction {}

class HideLoader extends BlocAction {}
