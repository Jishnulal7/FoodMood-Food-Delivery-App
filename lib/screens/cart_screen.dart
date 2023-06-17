import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/pizza-cart.png',
                  fit: BoxFit.contain,
                  width: 180,
                  height: 180,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Loaded Pizza',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 24),
                      ),
                      Text(
                        'Regular',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                ),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Text(
                        '₹ 175',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 36),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor),
                        width: 130,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              '1',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 140,
          ),
          Container(
            height: 395,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 20),
                        ),
                        Text(
                          '₹175',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax & fees',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 20),
                        ),
                        Text(
                          '₹30',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charges',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 20),
                        ),
                        Text(
                          'Free',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      height: 1,
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '₹205',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: 380,
                      height: 48,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                          top: BorderSide(color: Colors.white),
                          right: BorderSide(color: Colors.white),
                          left: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Voucher Code',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: 380,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
