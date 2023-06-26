import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _rating = 0.0;
  String? _selectedService;
  TextEditingController _commentsController = TextEditingController();
  List<String> _services = [
    'Service A',
    'Service B',
    'Service C',
    'Service D',
  ];

  @override
  void dispose() {
    _commentsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Rate your food delivery experience:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.star),
                  color: _rating >= 1.0 ? Colors.yellow : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _rating = 1.0;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  color: _rating >= 2.0 ? Colors.yellow : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _rating = 2.0;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  color: _rating >= 3.0 ? Colors.yellow : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _rating = 3.0;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  color: _rating >= 4.0 ? Colors.yellow : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _rating = 4.0;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  color: _rating >= 5.0 ? Colors.yellow : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _rating = 5.0;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select the food delivery service:',
              style: TextStyle(fontSize: 20.0),
            ),
            DropdownButton<String>(
              value: _selectedService,
              items: _services.map((String service) {
                return DropdownMenuItem<String>(
                  value: service,
                  child: Text(service),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedService = newValue;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Additional Comments:',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              controller: _commentsController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Enter your comments here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
               
                String comments = _commentsController.text;
                print('Rating: $_rating');
                print('Selected Service: $_selectedService');
                print('Comments: $comments');

                Navigator.pop(context); // Return to the previous screen
              },
              child: const Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
