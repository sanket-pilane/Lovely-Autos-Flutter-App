import 'package:flutter/widgets.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/pages/login_page.dart';
import 'package:lovely_autous/src/features/auth/screens/authentication/pages/sign_up.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  bool showTogglePage = true;

  void togglePages() {
    setState(() {
      showTogglePage = !showTogglePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showTogglePage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return SignupPage(
        onTap: togglePages,
      );
    }
  }
}
