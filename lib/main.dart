import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/ui/category/create_or_edit_category.dart';
import 'package:todolist_app/ui/main/main_page.dart';
import 'package:todolist_app/ui/onboarding/OnBoardingPage_View.dart';
import 'package:todolist_app/ui/splash/splash.dart';
import 'package:todolist_app/ui/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(supportedLocales: [
    Locale("vi"),
    Locale("en"),
  ], path: "assets/translations", child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      home: const CreateOrEditCategory(
      ),
    );
  }
}
