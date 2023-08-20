
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''
          Privacy Policy:
          This privacy policy explains how we collect, use, and protect your personal information when you use our food delivery app.

          Information Collection and Use:
          a. We collect personal information such as your name, email address, and phone number when you register an account.
          b. We use this information to provide the services and features of the app, including processing your orders and facilitating communication with restaurants.

          Data Sharing:
          a. We may share your personal information with third-party service providers that help us operate the app, process payments, and deliver orders.
          b. We may also share your information as required by law or to protect our rights, property, or safety.

          Data Security:
          a. We implement security measures to protect your personal information from unauthorized access, disclosure, or alteration.
          b. However, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee absolute security.

          Data Retention:
          a. We retain your personal information for as long as necessary to fulfill the purposes outlined in this privacy policy, unless a longer retention period is required by law.

          Children's Privacy:
          a. Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children.

          Changes to this Privacy Policy:
          a. We may update this privacy policy from time to time. We will notify you of any changes by posting the updated policy on our website or within the app.

          Contact Us:
          If you have any questions or concerns about this privacy policy, please contact us at [email address].

          ''',
          style: TextStyle(fontSize: 16.0),
        ),
      ),

    );
  }
}
