import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vistaar/presentation/views/auth/login.page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/entry.png",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("T",
                      style: TextStyle(
                          fontFamily: GoogleFonts.tangerine().fontFamily,
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          height: .9)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("arang",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          height: .9)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Welcome aboard to an exciting journey of productivity!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to Tarang, your productivity revolution! Join our community of achievers, unleash your potential with AI text editing and task management. Let's redefine work and create together!",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      border: Border.all(color: Colors.black)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/right-arrow.png"),
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
