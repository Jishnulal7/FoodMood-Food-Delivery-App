import 'package:food_mood_app/screens/profile/trackorder_screen.dart';
import 'package:food_mood_app/screens/profile/transactions_screen.dart';

import '../../models/profile_model.dart';
import 'add_feedback.dart';
import 'edit_profile.dart';
import 'help_support_screen.dart';
import 'logout_screen.dart';
import 'order_history.dart';
import 'profile_exports.dart';

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
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Theme.of(context).primaryColor,
                      const Color.fromARGB(255, 204, 166, 104),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Padding(
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
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 230,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                          'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: TextButton.icon(
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
                          Icons.edit,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: text.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // margin: const EdgeInsets.all(10),
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
                                  return TransactionScreen();
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
                                  return const AddFeedbackScreen();
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
