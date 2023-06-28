import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vistaar/infrastructure/constants.dart';
import 'package:vistaar/presentation/views/editor.page.dart';
import 'package:vistaar/presentation/views/home.page.dart';

void main() {
  runApp(const VistaarApp());
}

class VistaarApp extends StatelessWidget {
  const VistaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
          useMaterial3: true, fontFamily: GoogleFonts.poppins().fontFamily),
      home: const EditorPage(),
    );
  }
}
