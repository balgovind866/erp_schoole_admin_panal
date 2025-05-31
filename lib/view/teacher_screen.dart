
import 'package:flutter/material.dart';

class TeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Teachers Management',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Add Teacher'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Card(
              elevation: 4,
              child: SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Subject')),
                    DataColumn(label: Text('Experience')),
                    DataColumn(label: Text('Contact')),
                    DataColumn(label: Text('Actions')),
                  ],
                  rows: [
                    _buildTeacherRow('T001', 'Dr. Smith', 'Mathematics', '10 years', '9876543210'),
                    _buildTeacherRow('T002', 'Mrs. Johnson', 'English', '8 years', '9876543211'),
                    _buildTeacherRow('T003', 'Mr. Wilson', 'Science', '12 years', '9876543212'),
                    _buildTeacherRow('T004', 'Ms. Brown', 'History', '6 years', '9876543213'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildTeacherRow(String id, String name, String subject, String experience, String contact) {
    return DataRow(
      cells: [
        DataCell(Text(id)),
        DataCell(Text(name)),
        DataCell(Text(subject)),
        DataCell(Text(experience)),
        DataCell(Text(contact)),
        DataCell(
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit, color: Colors.blue),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}