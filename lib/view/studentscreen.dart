
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
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
                'Students Management',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Add Student'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search students...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 16),
              DropdownButton<String>(
                value: 'All Classes',
                items: ['All Classes', 'Grade 1', 'Grade 2', 'Grade 3']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
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
                    DataColumn(label: Text('Class')),
                    DataColumn(label: Text('Roll No')),
                    DataColumn(label: Text('Contact')),
                    DataColumn(label: Text('Actions')),
                  ],
                  rows: [
                    _buildStudentRow('001', 'John Doe', 'Grade 10-A', '15', '9876543210'),
                    _buildStudentRow('002', 'Jane Smith', 'Grade 10-B', '08', '9876543211'),
                    _buildStudentRow('003', 'Mike Johnson', 'Grade 9-A', '22', '9876543212'),
                    _buildStudentRow('004', 'Sarah Wilson', 'Grade 9-B', '11', '9876543213'),
                    _buildStudentRow('005', 'David Brown', 'Grade 8-A', '19', '9876543214'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildStudentRow(String id, String name, String grade, String rollNo, String contact) {
    return DataRow(
      cells: [
        DataCell(Text(id)),
        DataCell(Text(name)),
        DataCell(Text(grade)),
        DataCell(Text(rollNo)),
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