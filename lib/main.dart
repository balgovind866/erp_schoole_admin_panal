import 'package:admin_for_school/utils/theme.dart';
import 'package:admin_for_school/view/school_deshboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(SchoolManagementApp());
}

class SchoolManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final materialTheme = MaterialTheme(textTheme);
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'School Management System',
        theme: materialTheme.light(),
        darkTheme: materialTheme.dark(),
        home: SchoolDashboard(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}



// Dashboard Screen


// Students Screen


// Add Student Screen


// Teachers Screen


// Classes Screen
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

// Attendance Screen
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

// Grades Screen

