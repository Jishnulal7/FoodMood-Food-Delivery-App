import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signup&in/success_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                  'Reset Password',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Atleast 9 characters with uppercase and lowercase letters.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  // controller: _nameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Email ID / Mobile Number',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  // controller: _nameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Email ID / Mobile Number',
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
                    return const SuccessScreen();
                  }));
                },
                child: const Text(
                  'Submit',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
