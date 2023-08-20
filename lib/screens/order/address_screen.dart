import '../location/location_screen.dart';
import 'order_exports.dart';
import 'payment_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search for area,street name',
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColor,
                ),
                contentPadding: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  top: 14,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return   const LocationScreen();
                  },
                ));
              },
              child: ListTile(
                title: Text(
                  'Use Current location',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.gps_fixed,
                  color: Theme.of(context).primaryColor,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Saved adresses',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PaymentScreen();
                  },
                ));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  size: 35,
                  color: Colors.black,
                ),
                title: Text(
                  'Home',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                subtitle: const Text(
                  'Ground Flr, Sai Krupa, M.g.cross Rd, Opp Modi Nagar, Kandivali (west)',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.work_outline,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                'Work',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              subtitle: const Text(
                ' 44, Arenija Corner, Palm Beech Marg, Vashi',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent adresses',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              leading: const Icon(
                Icons.history,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              subtitle: const Text(
                'Ground Flr, Sai Krupa, M.g.cross Rd, Opp Modi Nagar, Kandivali (west)',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
