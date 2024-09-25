import 'package:flutter/material.dart';
import 'package:peronal_routing_demo_app/buttons/custom_button.dart';
import 'package:peronal_routing_demo_app/home/dashboard_screen.dart';
import 'package:peronal_routing_demo_app/input_fields/custom_text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const  CustomTextInputField(hintText: 'Full name'),
            const SizedBox(
              height: 50,
            ),
            const  CustomTextInputField(hintText: 'School'),
            const SizedBox(
              height: 50,
            ),
             const  CustomTextInputField(hintText: 'Password'),
            const SizedBox(
              height: 150,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                },
                text: 'Sign Up')
          ],
        ),
      ),
    );
  }
}
