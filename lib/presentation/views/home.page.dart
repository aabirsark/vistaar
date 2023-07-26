import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vistaar/infrastructure/constants.dart';
import 'package:vistaar/presentation/views/add.page.dart';
import 'package:vistaar/presentation/views/folder_display.page.dart';
import 'package:vistaar/presentation/widgets/folder_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Image.asset(
          "assets/entry.png",
          height: 40,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => const AddPage(),
                    ));
              },
              icon: const Icon(
                Icons.add,
                color: Colors.blue,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FolderPage(),
                      ));
                },
                child: const FolderWidget())
          ],
        ),
      ),
    );
  }
}
