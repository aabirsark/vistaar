import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.label,
    required this.isPassword,
    required this.preffixIcon,
  });

  final String label;
  final bool isPassword;
  final IconData preffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardAppearance: Brightness.light,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: Icon(
          preffixIcon,
          color: Colors.black,
        ),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.eye,
                  color: Colors.black,
                ))
            : null,
        enabledBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderSide: const BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderSide: const BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
