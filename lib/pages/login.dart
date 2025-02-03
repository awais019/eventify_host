import 'package:eventify_host/components/submit_button.dart';
import 'package:eventify_host/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(32, 41, 51, 0.32),
                Color.fromRGBO(32, 41, 51, 1),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Form(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello! welcome back.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 0.24,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Email address",
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
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  SubmitButton(
                    title: 'Log In',
                    onSubmit: () {
                      return Future.delayed(const Duration(microseconds: 200));
                    },
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(kSignupRoute),
                        child: Text(
                          "Sign up",
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
      ),
    );
  }
}
