

import 'package:admin_for_school/view/studentscreen.dart';
import 'package:admin_for_school/view/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';
import 'add_student_screen.dart';

import 'dashboardScreen.dart';
import 'grades_screeen.dart';


class SchoolDashboard extends StatefulWidget {
  @override
  _SchoolDashboardState createState() => _SchoolDashboardState();
}

class _SchoolDashboardState extends State<SchoolDashboard> {
  Widget _selectedScreen = DashboardScreen();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context).textTheme;
    return AdminScaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'School Management System',
          style: theme.titleLarge
        ),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
            tooltip: 'Notifications',
          ),
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {},
            tooltip: 'Profile',
          ),
          SizedBox(width: 8.w),
        ],
      ),
      sideBar: SideBar(
        textStyle: theme.bodyMedium!.copyWith(color:colorScheme.primary),
        backgroundColor: colorScheme.surfaceContainerLow,
        items: [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard_outlined,
            children: [],
          ),
          AdminMenuItem(
            title: 'Students',
            icon: Icons.school_outlined,
            children: [
              AdminMenuItem(title: 'All Students'),
              AdminMenuItem(title: 'Add Student'),
              AdminMenuItem(title: 'Student Reports'),
            ],
          ),
          AdminMenuItem(
            title: 'Teachers',
            icon: Icons.person_outline,
            children: [
              AdminMenuItem(title: 'All Teachers'),
              AdminMenuItem(title: 'Add Teacher'),
              AdminMenuItem(title: 'Teacher Schedule'),
            ],
          ),
          AdminMenuItem(
            title: 'Classes',
            icon: Icons.class_outlined,
            children: [
              AdminMenuItem(title: 'All Classes'),
              AdminMenuItem(title: 'Add Class'),
              AdminMenuItem(title: 'Timetable'),
            ],
          ),
          AdminMenuItem(
            title: 'Attendance',
            icon: Icons.how_to_reg_outlined,
            children: [
              AdminMenuItem(title: 'Mark Attendance'),
              AdminMenuItem(title: 'Attendance Reports'),
              AdminMenuItem(title: 'Monthly Summary'),
            ],
          ),
          AdminMenuItem(
            title: 'Grades',
            icon: Icons.grade_outlined,
            children: [
              AdminMenuItem(title: 'Grade Entry'),
              AdminMenuItem(title: 'Report Cards'),
              AdminMenuItem(title: 'Grade Analysis'),
            ],
          ),
          AdminMenuItem(
            title: 'Finance',
            icon: Icons.account_balance_wallet_outlined,
            children: [
              AdminMenuItem(title: 'Fee Collection'),
              AdminMenuItem(title: 'Expenses'),
              AdminMenuItem(title: 'Financial Reports'),
            ],
          ),
          AdminMenuItem(
            title: 'Library',
            icon: Icons.library_books_outlined,
            children: [
              AdminMenuItem(title: 'Books Inventory'),
              AdminMenuItem(title: 'Issue Books'),
              AdminMenuItem(title: 'Return Books'),
            ],
          ),
          AdminMenuItem(
            title: 'Events',
            icon: Icons.event_outlined,
            children: [
              AdminMenuItem(title: 'School Calendar'),
              AdminMenuItem(title: 'Add Event'),
              AdminMenuItem(title: 'Announcements'),
            ],
          ),
          AdminMenuItem(
            title: 'Settings',
            icon: Icons.settings_outlined,
            children: [
              AdminMenuItem(title: 'School Profile'),
              AdminMenuItem(title: 'Academic Year'),
              AdminMenuItem(title: 'User Management'),
            ],
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          setState(() {
            switch (item.title) {
              case 'Dashboard':
                _selectedScreen = DashboardScreen();
                break;
              case 'All Students':
                _selectedScreen = StudentsScreen();
                break;
              case 'Add Student':
                _selectedScreen = AddStudentScreen();
                break;
              case 'All Teachers':
                _selectedScreen = TeachersScreen();
                break;
              case 'All Classes':
                _selectedScreen = ClassesScreen();
                break;
              case 'Mark Attendance':
                _selectedScreen = AttendanceScreen();
                break;
              case 'Grade Entry':
                _selectedScreen = GradesScreen();
                break;
              default:
                _selectedScreen = DashboardScreen();
            }
          });
        },
        header: Container(
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'ADMIN PANEL',
              style: theme.titleMedium
            ),
          ),
        ),
        footer: Container(
          height: 50.h,
          width: double.infinity,
          color: colorScheme.surfaceContainerHigh,
          child: Center(
            child: Text(
              '© 2024 School Management System',
              style: TextStyle(
                color: colorScheme.onSurfaceVariant,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      body: _selectedScreen,
    );
  }
}


