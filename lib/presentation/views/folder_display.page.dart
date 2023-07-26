import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vistaar/infrastructure/colors.dart';
import 'package:vistaar/infrastructure/constants.dart';
import 'package:vistaar/presentation/widgets/common/custom_chip.widget.dart';

class FolderPage extends StatelessWidget {
  const FolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const RotatedBox(
                    quarterTurns: 2,
                    child: ImageIcon(
                      AssetImage("assets/icons/right-arrow.png"),
                      size: 30,
                    ))),
          ),
          SliverPersistentHeader(delegate: FolderPageDetail())
        ],
      ),
    );
  }
}

class FolderPageDetail extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: colors[0],
            child: Image.asset(
              logoImages.elementAt(0),
              height: 60,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Anchoring Scripts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomChip(
                    label: "private",
                    color: colors[0],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "27 item(s)",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "07/20/2023 last updated",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
