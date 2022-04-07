import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:laxo/screens/authentication/navigateauthscreen.dart';
import 'package:laxo/screens/variables.dart';

class IntroAuthScreen extends StatefulWidget {
  @override
  _IntroAuthScreenState createState() => _IntroAuthScreenState();
}

class _IntroAuthScreenState extends State<IntroAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Hello',
            body: 'Welcome to Laxo, network for addicts',
            image: Center(
                child: Image.asset('assets/images/test1.png', height: 175)),
            decoration: PageDecoration(
                bodyTextStyle: mystyle(20, Colors.black),
                titleTextStyle: mystyle(20, Colors.black))),
        PageViewModel(
            title: 'Join or start meeting',
            body: 'Face your addictions head on',
            image: Center(
                child: Image.asset('assets/images/test2.png', height: 175)),
            decoration: PageDecoration(
                bodyTextStyle: mystyle(20, Colors.black),
                titleTextStyle: mystyle(20, Colors.black))),
        PageViewModel(
            title: 'Privacy & sceurty',
            body: 'Your Security is important to us',
            image: Center(
                child: Image.asset('assets/images/test3.png', height: 175)),
            decoration: PageDecoration(
                bodyTextStyle: mystyle(20, Colors.black),
                titleTextStyle: mystyle(20, Colors.black))),
      ],
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NavigateAuthScreen(),
          ),
        );
      },
      onSkip: () {},
      showSkipButton: true,
      skip: const Icon(Icons.skip_next, size: 45),
      next: const Icon(Icons.arrow_forward_ios),
      done: Text(
        'Done',
        style: mystyle(20, Colors.black),
      ),
    );
  }
}
