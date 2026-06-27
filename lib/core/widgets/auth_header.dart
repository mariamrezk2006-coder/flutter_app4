import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subTitle;

  const AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 60,
        left: 25,
        right: 25,
        bottom: 35,
      ),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subTitle,
            style: const TextStyle(
              color: AppColors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}