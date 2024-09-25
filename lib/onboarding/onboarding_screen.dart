import 'package:flutter/material.dart';
import 'package:peronal_routing_demo_app/buttons/custom_button.dart';
import 'package:peronal_routing_demo_app/signup_screens/sign_up_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          const Center(
              child: Icon(
            Icons.school,
            size: 170,
          )),
          const Text(
            'Join Our Scholarship prep today!',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                            
                  },
                  text: 'next')
            ],
          )
                ],
              ),
        ));
  }
}
