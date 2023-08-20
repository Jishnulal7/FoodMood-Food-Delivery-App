// ignore_for_file: library_private_types_in_public_api


import 'package:food_mood_app/screens/signup&in/signup_screen.dart';

import 'exports.dart';
import 'onboard_content_model.dart';


class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool showTextButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.topRight,
            child: TextButton(
              child: Visibility(
                visible: currentIndex != contents.length - 1,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              onPressed: () {
                _pageController.animateToPage(
                  contents.length - 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    Image.asset(
                      contents[index].image,
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Text(
                      contents[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        wordSpacing: 2,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Text(
                      contents[index].desc,
                      style: const TextStyle(
                        wordSpacing: 1,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              height: 55,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: ElevatedButton(
                child: Text(
                  currentIndex == contents.length - 1 ? 'Get Moody' : 'Next',
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  }
                  _pageController.nextPage(
                      duration: const Duration(
                        milliseconds: 100,
                      ),
                      curve: Curves.bounceIn);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : const Color.fromARGB(120, 255, 158, 1),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
