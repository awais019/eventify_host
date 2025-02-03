import 'package:eventify_host/components/submit_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signup-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Form(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    letterSpacing: 0.24,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.48),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 0.24,
                    ),
                    fillColor: Color.fromRGBO(49, 62, 85, 0.78),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    letterSpacing: 0.24,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.48),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 0.24,
                    ),
                    fillColor: Color.fromRGBO(49, 62, 85, 0.78),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    letterSpacing: 0.24,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.48),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 0.24,
                    ),
                    fillColor: Color.fromRGBO(49, 62, 85, 0.78),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                SubmitButton(
                  title: 'Create Account',
                  onSubmit: () {
                    return Future.delayed(const Duration(microseconds: 200));
                  },
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
