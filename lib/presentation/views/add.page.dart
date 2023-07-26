import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vistaar/infrastructure/colors.dart';
import 'package:vistaar/infrastructure/constants.dart';
import 'package:vistaar/presentation/widgets/settings%20widgets/app_page_settings.widget.dart';

class AddPage extends StatefulHookWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final PageController controller = PageController(viewportFraction: .3);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final privateRepo = useState(true);
    final passwordEncryption = useState(false);
    final passwordEditor = useTextEditingController();
    final showPassword = useState(false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const ImageIcon(
              AssetImage("assets/icons/close.png"),
              size: 18,
            )),
        title: const Text(
          "Enchant Repository",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 150,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (e) {
                    selectedIndex.value = e;
                  },
                  itemBuilder: (context, index) => Center(
                    child: AnimatedScale(
                      duration: const Duration(milliseconds: 500),
                      scale: selectedIndex.value == index ? 1.4 : 1.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: colors[index]),
                        height: 70,
                        width: 70,
                        child: Center(
                          child: Image.asset(
                            logoImages.elementAt(index),
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemCount: logoImages.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                maxLines: null,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Repo. Name ?",
                    hintStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              AddPageSettingsBox(
                  privateRepo: privateRepo,
                  passwordEncryption: passwordEncryption,
                  passwordEditor: passwordEditor,
                  showPassword: showPassword),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ImageIcon(
                        AssetImage("assets/star.png"),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Enchant ",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
