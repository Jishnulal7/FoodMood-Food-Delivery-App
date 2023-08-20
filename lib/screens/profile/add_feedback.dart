import 'feedback_screen.dart';
import 'profile_exports.dart';

class AddFeedbackScreen extends StatelessWidget {
  const AddFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FeedbackScreen(),
            ),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
