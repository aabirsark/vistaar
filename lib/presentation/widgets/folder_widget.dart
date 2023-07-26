import 'package:flutter/material.dart';
import 'package:vistaar/infrastructure/colors.dart';
import 'package:vistaar/infrastructure/constants.dart';
import 'package:vistaar/presentation/widgets/common/custom_chip.widget.dart';

class FolderWidget extends StatelessWidget {
  const FolderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colors[0]),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 25,
                child: Center(
                    child: Image.asset(
                  logoImages[0],
                  height: 30,
                )),
              ),
              Spacer(),
              CustomChip(label: "private", color: Colors.white),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              "Anchoring Scripts",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "last updated on 07/27/23",
              style: TextStyle(fontSize: 11, color: Colors.black38),
            ),
          )
        ],
      ),
    );
  }
}
