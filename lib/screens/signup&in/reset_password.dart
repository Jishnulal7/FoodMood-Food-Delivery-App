

import 'package:food_mood_app/screens/signup&in/success_screen.dart';

import 'exports.dart';
import 'otp_screen.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        builder: (context) => const OtpScreen(),
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
            textAlign: TextAlign.center,
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
