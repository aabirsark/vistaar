import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vistaar/presentation/views/auth/login.page.dart';
import 'package:vistaar/presentation/views/auth/register.page.dart';
import 'package:vistaar/presentation/widgets/auth_text_field.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "|| श्री ||",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/register.png",
                  height: 260,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Namaste, Author Extraordinaire !!",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Join our community of passionate artists and take your creativity to new heights.",
                  style: TextStyle(
                    fontSize: 12
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const AuthTextField(
                  label: "Email",
                  isPassword: false,
                  preffixIcon: Iconsax.user,
                ),
                const SizedBox(
                  height: 13,
                ),
                const AuthTextField(
                  label: "Password",
                  isPassword: true,
                  preffixIcon: Iconsax.password_check,
                ),
                const SizedBox(
                  height: 13,
                ),
                const AuthTextField(
                  label: "Confirm Password",
                  isPassword: true,
                  preffixIcon: Iconsax.password_check,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Iconsax.login,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Already have an account ? "),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                        },
                        child: const Text("Login"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
