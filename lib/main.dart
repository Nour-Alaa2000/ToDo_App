import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/home_screen.dart';
import 'package:todo_app/provider/my_provider.dart';
import 'package:todo_app/splashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app/tabs/app_colors.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
    create: (context) =>MyProvider() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: AppColors.lightTheme,
      darkTheme: AppColors.darkTheme,
      locale: Locale(provider.languageCode),
      themeMode: provider.themeMode,
      routes: {
        SplashScreen.routeName:(context) => SplashScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
      },
    );
  }
}
