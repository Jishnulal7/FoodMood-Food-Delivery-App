import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/screens/signup&in/user/reset_password.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Enter OTP',
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
            textAlign: TextAlign.center,
            'A 4 digit code has been sent to your Email/Mobile number',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 59,
          ),
          Form(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.displayMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: '0',
                    focusColor: Theme.of(context).primaryColor,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.displayMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: '1',
                    focusColor: Theme.of(context).primaryColor,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.displayMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: '2',
                    focusColor: Theme.of(context).primaryColor,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.displayMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: '3',
                    focusColor: Theme.of(context).primaryColor,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
            ],
          )),
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
                return const ResetPasswordScreen();
              }));
            },
            child: const Text(
              'Verify',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
           Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: (){},
                child: Text('Resend Otp',style: Theme.of(context).textTheme.displayMedium,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
