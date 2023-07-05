import 'package:flutter/material.dart';
import 'package:hello_world/login/googlesignin.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginMessage() {
    const snackBar = SnackBar(
      
      content: Text('Login Successful'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splash.jpeg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 150.0, 0, 0),
              child: Center(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: const Text('Hey there \nWelcome back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              )),
            ),
            const SizedBox(height: 107),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 65,
                  child: SignInButton(
                    Buttons.Google,
                    mini: false,
                    elevation: 10.0,
                    text: 'Sign in with Google',
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                      loginMessage();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
