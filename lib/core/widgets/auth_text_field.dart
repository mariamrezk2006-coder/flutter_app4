import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isPassword;

  const AuthTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: Icon(icon),
              suffixIcon: isPassword
                  ? const Icon(Icons.visibility_outlined)
                  : null,
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}