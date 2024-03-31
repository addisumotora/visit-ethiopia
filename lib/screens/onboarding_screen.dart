import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static MaterialPage page() {
    return const MaterialPage(
      name: 'onboardingPath',
      key: ValueKey('onboardingPath'),
      child: OnboardingScreen(),
    );
  }

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  final Color rwColor = const Color.fromRGBO(64, 143, 77, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/svg/travel1.png'),
                fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'lets go',
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Let's explore ethiopia",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: buildActionButtons(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          mouseCursor: MaterialStateMouseCursor.clickable,
          elevation: 0,
          padding: const EdgeInsets.all(12),
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: const Color.fromARGB(66, 85, 85, 85),
          onPressed: () {
            // Provider.of<AppStateManager>(context, listen: false).completeOnBoarding();
          },
          child: const Text('Explore'),
        ),
      ],
    );
  }
}
