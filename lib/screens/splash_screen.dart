import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static MaterialPage page() {
    return const MaterialPage(
      name: 'splashPath',
      key: ValueKey('splashPath'),
      child: SplashScreen(),
    );
  }

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Provider.of<AppStateManager>(context, listen: false).initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/logo1.png')),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Initializing...', textStyle: const TextStyle(color: Colors.red, fontSize: 15.0)),
              WavyAnimatedText('welcome to ethiopia', textStyle: const TextStyle(color: Colors.red, fontSize: 15.0)),
            ],
            isRepeatingAnimation: true,
          )
        ],
      ),
    ));
  }
}
