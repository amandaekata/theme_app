import 'package:flutter/material.dart';
import 'package:peronal_routing_demo_app/onboarding/onboarding_screen.dart';
import 'package:peronal_routing_demo_app/util/app_theme.dart';
import 'package:peronal_routing_demo_app/view_model/app_theme_provider.dart';
import 'package:provider/provider.dart';

//This is the root of your application
//we are working with MaterialApp.router() instead of just MaterialApp()
//come along lets see how it works.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  ChangeNotifierProvider(
      create:  (_)=> AppThemeProvider(),
      builder: (context,_)=> MaterialApp(

        theme: AppTheme.lightMode,
        darkTheme: AppTheme.darkMode,

        themeMode: context.watch<AppThemeProvider>().appThemeMode,
        title: 'Learning Clean Code Architecture',
        home:const OnboardingScreen(),
      ),
    );
  }
}
