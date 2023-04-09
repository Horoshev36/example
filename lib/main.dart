import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:example/table/table_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jiffy/jiffy.dart';
import 'package:window_manager/window_manager.dart';

const String initialRoute = 'datatable2simple';

Future<void> main() async {
  await GetStorage.init();
  try {
    runApp(const MyApp());
  }catch (e) {
    print(e);
  }
  await Jiffy.locale('ru');
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(650, 500);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Custom window with Flutter";
    windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(alwaysOnTop: true);
    windowManager.waitUntilReadyToShow(windowOptions, () async {});
    win.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'main',
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      //initialRoute: initialRoute,

      routes: {
        '/': (context) => const TableScreen(),
      },
      //localizationsDelegates: const [
      //  GlobalMaterialLocalizations.delegate,
      //  //GlobalCupertinoLocalizations.delegate,
      //  //GlobalWidgetsLocalizations.delegate,
      //],
      //supportedLocales: const [
      //  Locale('ru', ''),
      //],
      //// change to see how PaginatedDataTable2 controls (e.g. Rows per page) get translated
      //locale: const Locale('ru', ''),
    );
  }
}

