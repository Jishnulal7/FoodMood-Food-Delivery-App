import 'package:flutter/material.dart';
import 'package:food_delivery/models/profile_model.dart';

import 'package:food_delivery/screens/profile/edit_profile.dart';
import 'package:food_delivery/screens/profile/feedback_screen.dart';
import 'package:food_delivery/screens/profile/help_support_screen.dart';
import 'package:food_delivery/screens/profile/logout_screen.dart';
import 'package:food_delivery/screens/profile/order_history.dart';
import 'package:food_delivery/screens/profile/trackorder_screen.dart';
import 'package:food_delivery/screens/profile/transactions_screen.dart';
// import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Theme.of(context).primaryColor,
                      const Color.fromARGB(255, 204, 166, 104),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jishnulal',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(fontSize: 24),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              '+919544473811',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Jishnulal9497@gmail.com',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            SizedBox(
                              child: Row(
                                // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Edit Profile',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return const EditProfile();
                                            },
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.edit_note,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                height: 1,
                color: Colors.black,
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(physics: const NeverScrollableScrollPhysics(),
              itemCount: text.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        switch (index) {
                          // Handle 'Order History' navigation
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return const OrderHistory();
                                },
                              ),
                            );
                            break;
                          // Handle 'Track Order' navigation
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return const TrackOrder();
                                },
                              ),
                            );
                            break;
                          // Handle 'Transactions' navigation
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return const Transactions();
                                },
                              ),
                            );
                            break;
                          // Handle Help & Support' navigation
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return HelpAndSupportScreen();
                                },
                              ),
                            );
                            break;
                          // Handle 'Feedback' navigation
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return const FeedbackScreen();
                                },
                              ),
                            );
                            break;
                          // Handle 'Logout' navigation
                          case 5:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return const LogoutScreen();
                                },
                              ),
                            );
                            break;
                        }
                      },
                      child: ListTile(
                        title: Text(
                          text[index],
                        ),
                        leading: icons[index],
                        trailing: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
