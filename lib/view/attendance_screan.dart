

import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mark Attendance',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Select Class',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Grade 10-A', 'Grade 10-B', 'Grade 9-A', 'Grade 9-B']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Date',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Card(
              elevation: 4,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(child: Text('Student Name', style: TextStyle(fontWeight: FontWeight.bold))),
                        Text('Present', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 40),
                        Text('Absent', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _buildAttendanceRow('Student ${index + 1}', index);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                        ),
                        SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Save Attendance'),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceRow(String studentName, int index) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
        children: [
          Expanded(child: Text(studentName)),
          Radio<bool>(
            value: true,
            groupValue: index % 3 == 0 ? false : true,
            onChanged: (value) {},
          ),
          SizedBox(width: 40),
          Radio<bool>(
            value: false,
            groupValue: index % 3 == 0 ? false : true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}