import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddPageSettingsBox extends StatelessWidget {
  const AddPageSettingsBox({
    super.key,
    required this.privateRepo,
    required this.passwordEncryption,
    required this.passwordEditor,
    required this.showPassword,
  });

  final ValueNotifier<bool> privateRepo;
  final ValueNotifier<bool> passwordEncryption;
  final TextEditingController passwordEditor;
  final ValueNotifier<bool> showPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Private Repo",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              CupertinoSwitch(
                  value: privateRepo.value,
                  onChanged: (value) {
                    privateRepo.value = value;
                  })
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Private repository are save with encryption !",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Text(
                "Password Encryption",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              CupertinoSwitch(
                  value: passwordEncryption.value,
                  onChanged: (value) {
                    passwordEncryption.value = value;
                  })
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordEditor,
            style: const TextStyle(fontSize: 14),
            enabled: passwordEncryption.value,
            obscureText: showPassword.value,
            decoration: InputDecoration(
                isDense: true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    showPassword.value = !showPassword.value;
                  },
                  child: Icon(
                    showPassword.value ? Iconsax.eye_slash : Iconsax.eye,
                  ),
                ),
                hintText: "Enter password",
                hintStyle: const TextStyle(fontSize: 14),
                border: InputBorder.none),
          )
        ],
      ),
    );
  }
}
