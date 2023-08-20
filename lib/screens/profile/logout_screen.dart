
import '../signup&in/exports.dart';
import '../signup&in/signin_screen.dart';
import 'account_screen.dart';
import 'profile_exports.dart';


class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contex) {
          return const SignInScreen();
        },
      ),
    );
  }

  onPress() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contex) {
          return const AccountScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/log-out.png'),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Oh no! You are leaving...',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 20),
            ),
            Text(
              'Are you sure',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: 380,
                  height: 48,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xffD9D9D9)),
                      top: BorderSide(color: Color(0xffD9D9D9)),
                      right: BorderSide(color: Color(0xffD9D9D9)),
                      left: BorderSide(color: Color(0xffD9D9D9)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Yes, Log me out',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: onPress,
                child: Container(
                  width: 380,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Nah! Just kidding',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
