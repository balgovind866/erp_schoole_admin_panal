import 'package:flutter/material.dart';

class ClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classes Management',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return _buildClassCard('Grade ${index + 1}', '${25 + index * 2} Students', 'Room ${index + 101}');
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassCard(String grade, String students, String room) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.class_, size: 40, color: Colors.orange),
            SizedBox(height: 12),
            Text(
              grade,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(students, style: TextStyle(color: Colors.grey[600])),
            Text(room, style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text('View Details'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}