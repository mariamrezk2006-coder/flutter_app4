import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/auth_button.dart';
import '../../core/widgets/auth_header.dart';
import '../../core/widgets/auth_text_field.dart';
import '../../core/widgets/social_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const AuthHeader(
                title: "Create Account",
                subTitle: "Get Started",
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const AuthTextField(
                      label: "Full Name",
                      hint: "Enter your full name",
                      icon: Icons.person_outline,
                    ),

                    const AuthTextField(
                      label: "Email",
                      hint: "Enter your email",
                      icon: Icons.email_outlined,
                    ),

                    const AuthTextField(
                      label: "Password",
                      hint: "Create a password",
                      icon: Icons.lock_outline,
                      isPassword: true,
                    ),

                    const AuthTextField(
                      label: "Confirm Password",
                      hint: "Confirm your password",
                      icon: Icons.lock_outline,
                      isPassword: true,
                    ),

                    Row(
                      children: [

                        Checkbox(
                          value: isChecked,
                          activeColor: AppColors.primary,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),

                        const Expanded(
                          child: Text(
                            "I agree to the Terms & Conditions",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    AuthButton(
                      text: "Create Account",
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          "/smartHome",
                        );
                      },
                    ),

                    const SizedBox(height: 25),

                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or continue with",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SocialButton(
                          image: "assets/images/google.png",
                          onTap: () {},
                        ),

                        const SizedBox(width: 20),

                        SocialButton(
                          image: "assets/images/apple.png",
                          onTap: () {},
                        ),
                      ],
                    ),

                    const SizedBox(height: 35),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              "/signin",
                            );
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}