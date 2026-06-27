import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/auth_button.dart';
import '../../core/widgets/auth_header.dart';
import '../../core/widgets/auth_text_field.dart';
import '../../core/widgets/social_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const AuthHeader(
                title: "Sign In",
                subTitle: "Welcome Back",
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Column(
                  children: [

                    const AuthTextField(
                     label: "Email",
                   hint: "Enter your email",
                    icon: Icons.email_outlined,
                 ),

                    const SizedBox(height: 20),

                    const AuthTextField(
                    label: "Password",
                  hint: "Enter your password",
                   icon: Icons.lock_outline,
                   isPassword: true,
                  ),

                    const SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    AuthButton(
                      text: "Sign In",
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
      image:
          "https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png",
      onTap: () {},
    ),

    const SizedBox(width: 20),

    SocialButton(
      image:
          "https://cdn-icons-png.flaticon.com/512/0/747.png",
      onTap: () {},
    ),

  ],
),
                   

                    const SizedBox(height: 35),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              "/signup",
                            );
                          },
                          child: const Text(
                            "Sign Up",
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