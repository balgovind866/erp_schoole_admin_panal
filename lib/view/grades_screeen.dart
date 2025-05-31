

import 'package:flutter/material.dart';

class GradesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Grade Entry',
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
                  items: ['Grade 10-A', 'Grade 10-B', 'Grade 9-A']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Subject',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Mathematics', 'English', 'Science', 'History']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Exam Type',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Mid Term', 'Final', 'Quiz', 'Assignment']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
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
                    DataColumn(label: Text('Student Name')),
                    DataColumn(label: Text('Roll No')),
                    DataColumn(label: Text('Marks Obtained')),
                    DataColumn(label: Text('Total Marks')),
                    DataColumn(label: Text('Grade')),
                  ],
                  rows: [
                    _buildGradeRow('John Doe', '15', '85', '100', 'A'),
                    _buildGradeRow('Jane Smith', '08', '92', '100', 'A+'),
                    _buildGradeRow('Mike Johnson', '22', '78', '100', 'B'),
                    _buildGradeRow('Sarah Wilson', '11', '88', '100', 'A'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildGradeRow(String name, String rollNo, String obtained,
      String total, String grade) {
    return DataRow(
      cells: [
        DataCell(Text(name)),
        DataCell(Text(rollNo)),
        DataCell(
          Container(
            width: 80,
            child: TextField(
              decoration: InputDecoration(
                hintText: obtained,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        DataCell(Text(total)),
        DataCell(
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: _getGradeColor(grade),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              grade,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _getGradeColor(String grade) {
    switch (grade) {
      case 'A+':
        return Colors.green[700]!;
      case 'A':
        return Colors.green[600]!;
      case 'B':
        return Colors.blue[600]!;
      case 'C':
        return Colors.orange[600]!;
      case 'D':
        return Colors.red[600]!;
      default:
        return Colors.grey[600]!;
    }
  }
}