import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:vistaar/infrastructure/constants.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  late quill.QuillController controller;

  @override
  void initState() {
    super.initState();
    controller = quill.QuillController.basic();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName.toUpperCase()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black26, spreadRadius: 5, blurRadius: 10)
              ], color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: quill.QuillToolbar.basic(
                showClearFormat: false,
                toolbarIconSize: 19,
                color: Colors.black,
                iconTheme: const quill.QuillIconTheme(
                    borderRadius: 10,
                    disabledIconColor: Colors.grey,
                    iconUnselectedColor: Colors.white,
                    iconSelectedFillColor: Colors.white,
                    iconSelectedColor: Colors.black,
                    iconUnselectedFillColor: Colors.black),
                controller: controller,
                multiRowsDisplay: false,
                showSmallButton: false,
                showBackgroundColorButton: false,
                showInlineCode: false,
                showSubscript: false,
                showSuperscript: false,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: quill.QuillEditor.basic(
                    controller: controller, readOnly: false)),
          ],
        ),
      ),
    );
  }
}
