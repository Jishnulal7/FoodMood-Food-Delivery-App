import 'package:flutter/material.dart';

import 'place_order.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  final List<String> title = [
    'Cards',
    'UPI',
    'Wallets',
    'Netbanking',
    'Pay on Delivery'
  ];
  final List<String> subtitle = [
    'Credit / Debit card',
    'Pay with UPI',
    'Paytm Wallet',
    'Netbanking',
    'Cash on delivery'
  ];
  final List<Image> image = [
    Image.asset('assets/images/credit-card.png'),
    Image.asset('assets/images/Upi.png'),
    Image.asset('assets/images/Paytm-Logo.wine 1.png'),
    Image.asset('assets/images/fluent_building-bank-16-regular.png'),
    Image.asset('assets/images/bi_cash.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: title.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          title[index],
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                          switch (index) {
                            case 4:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PlaceOrderScreen();
                                  },
                                ),
                              );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            image[index],
                            Text(subtitle[index]),
                            const SizedBox(
                              width: 120,
                            ),
                            const Icon(Icons.keyboard_arrow_right_outlined)
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
