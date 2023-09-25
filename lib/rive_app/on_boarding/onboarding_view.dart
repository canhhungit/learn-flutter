import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late RiveAnimationController _btnController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _btnController = OneShotAnimation("active", autoplay: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Center(
              child: OverflowBox(
                  maxWidth: double.infinity,
                  child: Transform.translate(
                    offset: const Offset(200, 100),
                    child: Image.asset(
                      'assets/rive_app/images/backgrounds/spline.png',
                      // width: 715,
                      // height: 560,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
          // ImageFiltered(
          //   imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 30),
          //   child: const RiveAnimation.asset('assets/rive_app/rive/shapes.riv'),
          // ),
          SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Learn design & code",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 60),
                      ),
                    ),
                    Text(
                      "Don't skip design. I had this same problem, I was able to fix it by using only the name of directory created in the projects root folder, instead of also including the file i was trying to point to.",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: "Inter",
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Container(
                        width: 236,
                        height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10,
                                  offset: Offset(0, 10)
                                  // blurRadius: BorderRadius.circular(30)),
                                  )
                            ]),
                        child: Stack(children: [
                          RiveAnimation.asset(
                            "assets/rive_app/rive/button.riv",
                            fit: BoxFit.cover,
                            controllers: [_btnController],
                          ),
                          Center(
                            child: Transform.translate(
                              offset: const Offset(4, 4),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_rounded),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Start the course",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                      onTap: () {
                        _btnController.isActive = true;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Just wondering if there is a shortcut or extension in visual studio code to surround a code block - or more specifically highlight the ...",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 13,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
