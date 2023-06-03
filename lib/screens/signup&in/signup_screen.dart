import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/signup&in/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 44,
                  left: 24,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Name',
                    prefixIcon: Icon(
                      CupertinoIcons.person_circle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Email',
                    prefixIcon: Icon(
                      CupertinoIcons.mail,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Mobile Number',
                    prefixIcon: Icon(
                      CupertinoIcons.phone,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Password',
                    suffixIcon: Icon(
                      CupertinoIcons.eye_slash_fill,
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.lock,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    342,
                    58,
                  ),
                ),
                onPressed: () {
                    Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  // Checkbox(
                  //   value: ,
                  //   onChanged: ,
                  // ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'I agree to the terms & conditions and privacy policy',
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignInScreen();
                      }));
                    },
                    child: Text(
                      ' Sign in',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
