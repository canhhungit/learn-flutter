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
      body: Center(
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
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
                    decoration: authInputStyle(),
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
                    decoration: authInputStyle(),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

InputDecoration authInputStyle() {
  return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1))));
}
