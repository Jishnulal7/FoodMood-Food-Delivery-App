


import 'package:food_mood_app/screens/signup&in/signin_screen.dart';

import 'exports.dart';
import 'otp_screen.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Forgot Password?',
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
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 20),
            child: Text(
              'Don’t worry! It happens. Please enter the address associated with your account.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 242,
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
                335,
                50,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const OtpScreen();
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
