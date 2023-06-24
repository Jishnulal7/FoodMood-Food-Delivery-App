import 'package:flutter/material.dart';

import 'package:food_delivery/screens/profile/edit_profile.dart';
// import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List<String> text = [
    'Order History',
    'Track Order',
    'Transactions',
    'Help & Support',
    'Feedback',
    'Logout'
  ];
  final List<Icon> icons = [
    const Icon(
      Icons.history,
      color: Colors.black,
    ),
    const Icon(
      Icons.fire_truck,
      color: Colors.black,
    ),
    const Icon(
      Icons.card_giftcard,
      color: Colors.black,
    ),
    const Icon(
      Icons.help_center,
      color: Colors.black,
    ),
    const Icon(
      Icons.feedback,
      color: Colors.black,
    ),
    const Icon(
      Icons.logout_outlined,
      color: Colors.black,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'View Activity',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  IconButton(
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
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
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
            ListView.builder(
              itemCount: text.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: InkWell(
                      onTap: () {},
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
