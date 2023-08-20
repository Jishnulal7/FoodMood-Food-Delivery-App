import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatelessWidget {

  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '''
              Acceptance of Terms:
              a. These terms and conditions constitute a legally binding agreement between you and the food delivery app.
              b. If you do not agree to these terms and conditions, you may not use the app.
                  
              Account Registration:
              a. You must be at least 18 years old to create an account on our app.
              b. You agree to provide accurate, current, and complete information during the registration process.
              c. You are responsible for maintaining the confidentiality of your account and password.
                  
              Ordering and Delivery:
              a. The app facilitates the ordering and delivery of food from various restaurants and vendors.
              b. The availability of specific food items is subject to the respective restaurant's menu.
              c. The app provides estimated delivery times, but these are subject to change based on various factors such as traffic, weather conditions, and restaurant preparation times.
                  
              Payments and Fees:
              a. Prices for food items and delivery fees are clearly displayed on the app.
              b. You agree to pay for all orders placed through your account, including applicable taxes and fees.
              c. The app may use third-party payment processors to process payments, and you agree to their terms and conditions.
                  
              Cancellations and Refunds:
              a. You may cancel an order before it has been confirmed by the restaurant.
              b. Once an order has been confirmed, cancellations are subject to the policies of the respective restaurant.
              c. Refunds, if applicable, will be processed based on the policies of the app and the restaurant.
                  
              User Conduct:
              a. You agree to use the app in compliance with all applicable laws and regulations.
              b. You shall not use the app for any unlawful or unauthorized purposes.
              c. You shall not interfere with the operation of the app or attempt to gain unauthorized access to any data or information.
                  
              Intellectual Property:
              a. The app and its content are protected by intellectual property rights.
              b. You may not copy, modify, distribute, or reproduce any part of the app without prior written permission from the app owner.
                  
              Privacy:
              a. The app collects and processes personal information as described in its Privacy Policy.
              b. By using the app, you consent to the collection, use, and disclosure of your personal information as outlined in the Privacy Policy.
                  
              Disclaimer of Liability:
              a. The app owner and its affiliates shall not be liable for any direct, indirect, incidental, or consequential damages arising out of your use or inability to use the app.
              b. The app owner does not guarantee the quality, safety, or legality of the food items provided by the restaurants.
                  
              Modification of Terms:
              a. The app owner reserves the right to modify or update these terms and conditions at any time without prior notice.
              b. Continued use of the app after any modifications constitutes your acceptance of the updated terms.
                  
              Termination:
              a. The app owner reserves the right to terminate or suspend your account without prior notice for any reason, including violation of these terms and conditions.
                  
              Governing Law:
              a. These terms and conditions shall be governed by and construed in accordance with the laws of the jurisdiction in which the app owner operates.
              ''',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

