import 'package:flutter/material.dart';

class SpecialistItem extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final VoidCallback onTap;

   SpecialistItem({
    Key? key,
    required this.imagePath,
    required this.imageName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when tapped
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(95, 179, 173, 173),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 32,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              imageName,
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
