
import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _deliveryWarriorsRating = 0.0;
  double _friendlinessRating = 0.0;
  double _packagingRating = 0.0;
  double _overallRating = 0.0;
  // ignore: unused_field
  String _suggestions = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildQuestion(
              'So, how would you rate our delivery warriors\' service?',
              _deliveryWarriorsRating,
              (double rating) {
                setState(() {
                  _deliveryWarriorsRating = rating;
                });
              },
            ),
            _buildQuestion(
              'Are you happy with the friendliness of our delivery boys?',
              _friendlinessRating,
              (double rating) {
                setState(() {
                  _friendlinessRating = rating;
                });
              },
            ),
            _buildQuestion(
              'Alright, so how would you rate our packaging?',
              _packagingRating,
              (double rating) {
                setState(() {
                  _packagingRating = rating;
                });
              },
            ),
            _buildQuestion(
              'Finally, how would you rate our overall delivery system?🚚',
              _overallRating,
              (double rating) {
                setState(() {
                  _overallRating = rating;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Would you like to give us some suggestions? ✍️',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _suggestions = value;
                });
              },
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Enter your suggestions here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Save the feedback and ratings
                // You can implement the logic to store the feedback and ratings
                // in a database or perform any other actions here.
                // print('Delivery Warriors Rating: $_deliveryWarriorsRating');
                // print('Friendliness Rating: $_friendlinessRating');
                // print('Packaging Rating: $_packagingRating');
                // print('Overall Rating: $_overallRating');
                // print('Suggestions: $_suggestions');

                Navigator.pop(context); // Return to the previous screen
              },
              child: const Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestion(String question, double rating, Function(double) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 20.0),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.sentiment_very_dissatisfied),
              color: rating >= 1.0 ? Colors.orange : Colors.grey,
              onPressed: () => onChanged(1.0),
            ),
            IconButton(
              icon: const Icon(Icons.sentiment_dissatisfied),
              color: rating >= 2.0 ? Colors.orange : Colors.grey,
              onPressed: () => onChanged(2.0),
            ),
            IconButton(
              icon: const Icon(Icons.sentiment_neutral),
              color: rating >= 3.0 ? Colors.orange : Colors.grey,
              onPressed: () => onChanged(3.0),
            ),
            IconButton(
              icon: const Icon(Icons.sentiment_satisfied),
              color: rating >= 4.0 ? Colors.orange : Colors.grey,
              onPressed: () => onChanged(4.0),
            ),
            IconButton(
              icon: const Icon(Icons.sentiment_very_satisfied),
              color: rating >= 5.0 ? Colors.orange : Colors.grey,
              onPressed: () => onChanged(5.0),
            ),
          ],
        ),
      ],
    );
  }
}
