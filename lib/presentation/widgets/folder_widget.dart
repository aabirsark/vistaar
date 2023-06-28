import 'package:flutter/material.dart';


class FolderWidget extends StatelessWidget {
  const FolderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          ImageIcon(
            const AssetImage(
              "assets/folder.png",
            ),
            size: constraints.maxWidth - 30,
            color: const Color(0xFFa2d2ff),
          ),
          const Text(
            "Anchoring Scripts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2 Item(s)",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      );
    });
  }
}
