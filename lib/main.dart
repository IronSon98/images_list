import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/themes.dart';
import 'package:images_list/splash.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            theme: themeNotifier.isDark ? Themes.darkTheme : Themes.lightTheme,
            debugShowCheckedModeBanner: false,
            home: const Splash(),
          );
        },
      ),
    );
  }
}
