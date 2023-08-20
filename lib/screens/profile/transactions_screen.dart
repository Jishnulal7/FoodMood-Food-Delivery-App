

import '../../models/menu_item_model.dart';
import 'profile_exports.dart';



class Order {
  final int orderId;
  final List<MenuItem> items;
  final double totalAmount;
  final String orderDate;

  Order(
      {required this.orderId,
      required this.items,
      required this.totalAmount,
      required this.orderDate});
}

class TransactionScreen extends StatelessWidget {
  final List<Order> pastOrders = [
    Order(
      orderId: 1,
      items: [
        MenuItem.menuItems[0],
        MenuItem.menuItems[4],
      ],
      totalAmount: 215.0,
      orderDate: 'July 17, 2023',
    ),
    Order(
      orderId: 2,
      items: [
        MenuItem.menuItems[10],
        MenuItem.menuItems[15],
      ],
      totalAmount: 379.99,
      orderDate: 'July 16, 2023',
    ),
    Order(
      orderId: 3,
      items: [
        MenuItem.menuItems[19],
        MenuItem.menuItems[29],
      ],
      totalAmount: 569.0,
      orderDate: 'July 15, 2023',
    ),
    Order(
      orderId: 4,
      items: [
        MenuItem.menuItems[21],
        MenuItem.menuItems[33],
      ],
      totalAmount: 249.0,
      orderDate: 'July 14, 2023',
    ),
    Order(
      orderId: 5,
      items: [
        MenuItem.menuItems[44],
        MenuItem.menuItems[52],
      ],
      totalAmount: 260.0,
      orderDate: 'July 13, 2023',
    ),
  ];

   TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: ListView.builder(
        itemCount: pastOrders.length,
        itemBuilder: (context, index) {
          return OrderCard(order: pastOrders[index]);
        },
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        leading: const Icon(Icons.restaurant),
        title: Text('Order #${order.orderId}'),
        subtitle: Text(
            'Total Amount: ₹${order.totalAmount}\nOrder Date: ${order.orderDate}'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Add logic to navigate to order details screen
        },
      ),
    );
  }
}
