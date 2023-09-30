import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lovely_autous/src/constants/image_strings.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/components/login_btn.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/components/my_textfields.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/components/no_ac.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/components/others_auth.dart';
import 'package:lovely_autous/src/services/auth.dart';
import 'package:lovely_autous/src/utils/show_snackbar.dart';

class SignupPage extends StatelessWidget {
  final Function()? onTap;
  const SignupPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    final height = MediaQuery.of(context).size.height;

    void signUp() async {
      if (passwordController.text == confirmPasswordController.text) {
        FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmailAndPassword(
            context: context,
            email: emailController.text,
            password: passwordController.text);
      } else {
        showSnackBar(context, "Both password must be same");
      }
    }

    void signInWithGoogle() {
      FirebaseAuthMethods(FirebaseAuth.instance)
          .signInWithGoogle(context: context);
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 80.0, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Navigate Your Car Journey",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          MyTextFields(
                              label: "Email",
                              icon: Icons.mail_outline_rounded,
                              controller: emailController),
                          MyTextFields(
                            label: "Password",
                            icon: Icons.lock_outlined,
                            controller: passwordController,
                            obscureText: true,
                          ),
                          MyTextFields(
                            label: "Confirm Password",
                            icon: Icons.lock_outlined,
                            controller: confirmPasswordController,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: signInWithGoogle,
                            child: OtherSignIn(
                                iconPath: kGoogleLogo,
                                title: "Sign in with Google"),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: signUp,
                              child: LoginButton(text: "Signup")),
                          BottomeLine(
                            firstText: "Already a user?",
                            secondText: "Login",
                            onTap: onTap,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
