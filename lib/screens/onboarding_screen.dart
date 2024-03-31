import 'package:flutter/material.dart';


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
        child: Column(
          children: [
            Expanded(child: buildPages()),
            // buildIndicator(),
            buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          child: const Text('Explore'),
          onPressed: () {
            // Provider.of<AppStateManager>(context, listen: false).completeOnBoarding();
          },
        ),
      ],
    );
  }

  Widget buildPages() {
    return PageView(
      controller: controller,
      children: [
        onboardPageView(
          const AssetImage('assets/recommend.png'),
          '''Check out weekly recommended recipes and what your friends are cooking!'''), 
        onboardPageView(const AssetImage('assets/sheet.png'),
            'Cook with step by step instructions!'),
        onboardPageView(const AssetImage('assets/list.png'),
            'Keep track of what you need to buy'),
      ],
    );
  }

  Widget onboardPageView(ImageProvider imageProvider, String text) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.fitWidth,
              image: imageProvider,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  // Widget buildIndicator() {
  //   return SmoothPageIndicator(
  //     // controller: controller,
  //     // count: 3,
  //     // effect: WormEffect(activeDotColor: rwColor),
  //   );
  // }
}