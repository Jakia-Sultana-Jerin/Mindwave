import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    // clientId: 'your-client_id.apps.googleusercontent.com',
    // scopes: scopes,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    appBar: AppBar(title: const Text('Login Page')),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            opacity: 0.4,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ElevatedButton(
              child: Image.asset('images/google_button.png'),
              onPressed: _handleSignIn,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
      print("successfully logged in");
    } catch (error) {
      print(error);
    }
  }
}
