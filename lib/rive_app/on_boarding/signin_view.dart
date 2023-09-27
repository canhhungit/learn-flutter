import 'package:familycalendar/rive_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 600),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Colors.white, Colors.white10])),
              child: Container(
                padding: const EdgeInsets.all(29),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: RiveAppTheme.shadow.withOpacity(0.3),
                          offset: const Offset(0, 3),
                          blurRadius: 5),
                      BoxShadow(
                          color: RiveAppTheme.shadow.withOpacity(0.3),
                          offset: const Offset(0, 30),
                          blurRadius: 30)
                    ],
                    color: CupertinoColors.secondarySystemBackground,
                    backgroundBlendMode: BlendMode.luminosity),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 34, fontFamily: "Poppins"),
                    ),
                    const Text(
                      "Sign in. Use your Google Account. Email or phone. Forgot email?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontFamily: "Inter",
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: authInputStyle("icon_email"),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontFamily: "Inter",
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: authInputStyle("icon_lock"),
                      obscureText: true,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: const Color(0xFFF77D8E).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 10))
                      ]),
                      child: CupertinoButton(
                          padding: const EdgeInsets.all(20),
                          color: const Color.fromARGB(255, 211, 83, 74),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_forward_rounded),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Sign in",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("OR"),
                          ),
                          Expanded(child: Divider())
                        ],
                      ),
                    ),
                    const Text("Sign up with email or google"),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/rive_app/images/logo_email.png"),
                        Image.asset("assets/rive_app/images/logo_google.png"),
                        Image.asset("assets/rive_app/images/logo_apple.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    // color: Colors.red,
                    minSize: 36,
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(18)),
                      child: const Icon(Icons.close, color: Colors.black),
                    ),
                    onPressed: () {}),
              ),
            )
          ]),
        )),
      ),
    );
  }
}

InputDecoration authInputStyle(String iconName) {
  return InputDecoration(
      filled: true,
      contentPadding: const EdgeInsets.all(15),
      fillColor: Colors.white,
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Image.asset("assets/rive_app/images/$iconName.png"),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1))));
}
