import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  const SocialButton({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 70,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.network(
  image,
  fit: BoxFit.contain,
),
        ),
      ),
    );
  }
}