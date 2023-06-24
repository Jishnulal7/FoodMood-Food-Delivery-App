import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signup&in/user/success_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
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
                hintText: 'New Password',
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
                hintText: 'Confirm Password',
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(
                335,
                50,
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
    );
  }
}
