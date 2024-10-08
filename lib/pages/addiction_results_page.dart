import 'package:flutter/material.dart';

class AddictionResultsPage extends StatelessWidget {
  final int totalScore;
  final String addictionType;

  const AddictionResultsPage({
    Key? key,
    required this.totalScore,
    required this.addictionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Total Score: $totalScore",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              "Addiction Type: $addictionType",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.blueGrey),
            ),
            SizedBox(height: 20),
            Text(
              "Understanding your results is a crucial step in addressing your mental health. This score reflects your responses and can guide your next steps.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Text(
              "It is important to talk to someone who can help you. Here are some tailored recommendations based on your score:",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 10),
            _getRecommendations(addictionType),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to information about addiction
                final snackBar = SnackBar(content: Text('Link to more information about addiction will be available.'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Know more about addiction"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0), // Increased padding for better text fit
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 15), // Increased spacing
            ElevatedButton(
              onPressed: () {
                // Open link to KMC Manipal
                final snackBar = SnackBar(content: Text('Registration link to KMC Manipal will be available.'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("I want to see a professional"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0), // Increased padding for better text fit
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRecommendations(String addictionType) {
    switch (addictionType) {
      case 'Severe Addiction':
        return Text("Seek immediate professional help. Don't hesitate to reach out to a mental health crisis line or a local emergency service.", style: TextStyle(fontSize: 16, color: Colors.red));
      case 'Moderately Severe Addiction':
        return Text("Consider talking to a mental health professional. They can provide guidance and support tailored to your needs.", style: TextStyle(fontSize: 16, color: Colors.orange));
      case 'Moderate Addiction':
        return Text("Engage in supportive social activities and consider counseling. Connecting with friends or support groups can help.", style: TextStyle(fontSize: 16, color: Colors.yellow));
      case 'Mild Addiction':
        return Text("Practice self-care and monitor your mood. Activities like exercise, journaling, or hobbies can uplift your spirits.", style: TextStyle(fontSize: 16, color: Colors.lightGreen));
      default:
        return Text("Maintain a positive outlook and self-care. Regularly check in with yourself and prioritize your well-being.", style: TextStyle(fontSize: 16, color: Colors.green));
    }
  }
}
