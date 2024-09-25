import 'package:flutter/material.dart';
import 'package:peronal_routing_demo_app/buttons/custom_button.dart';

import 'package:peronal_routing_demo_app/view_model/app_theme_provider.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [CustomButton(onPressed: () {
                appThemeProvider.appThemeMode== ThemeMode.light? 
                appThemeProvider.setThemeMode =ThemeMode.dark:  appThemeProvider.setThemeMode =ThemeMode.light;
              }, text: 'Switch Modes')],
            ),
const SizedBox(height: 200,),
           const  Center( child: Text('Welcome Back Amanda'),)
          ],
        ),
      ),
    );
  }
}
