

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      padding: EdgeInsets.all(24.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard Overview',
            style: textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 24.h),

          // Stats Cards Row
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 1.8,
            children: [
              _buildStatsCard(
                context,
                'Total Students',
                '1,248',
                Icons.school_outlined,
                colorScheme.primary,
              ),
              _buildStatsCard(
                context,
                'Total Teachers',
                '89',
                Icons.person_outline,
                colorScheme.secondary,
              ),
              _buildStatsCard(
                context,
                'Total Classes',
                '42',
                Icons.class_outlined,
                colorScheme.tertiary,
              ),
              _buildStatsCard(
                context,
                'Today\'s Attendance',
                '94%',
                Icons.how_to_reg_outlined,
                colorScheme.error,
              ),
            ],
          ),

          SizedBox(height: 32.h),

          // Two Column Layout for Activities and Events
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: _buildRecentActivities(context),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: _buildUpcomingEvents(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCard(BuildContext context, String title, String value, IconData icon, Color accentColor) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 1,
      surfaceTintColor: colorScheme.surfaceTint,
      child: Container(
        padding: EdgeInsets.all(1.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: LinearGradient(
            colors: [
              accentColor.withOpacity(0.08),
              accentColor.withOpacity(0.03),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 10.sp,
              color: accentColor,
            ),
            SizedBox(height: 12.h),
            Text(
              value,
              style: textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: accentColor,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivities(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 1,
      surfaceTintColor: colorScheme.surfaceTint,
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activities',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 20.h),
            _buildActivityItem(
              context,
              'New student enrolled: John Doe',
              '2 hours ago',
              Icons.person_add_outlined,
            ),
            _buildActivityItem(
              context,
              'Grade 10 Math exam scheduled',
              '4 hours ago',
              Icons.assignment_outlined,
            ),
            _buildActivityItem(
              context,
              'Parent-teacher meeting reminder sent',
              '6 hours ago',
              Icons.email_outlined,
            ),
            _buildActivityItem(
              context,
              'Library book returned by Sarah Wilson',
              '1 day ago',
              Icons.library_books_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(BuildContext context, String activity, String time, IconData icon) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              size: 7.sp,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  time,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpcomingEvents(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      surfaceTintColor: colorScheme.surfaceTint,
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Events',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 20.h),
            _buildEventItem(
              context,
              'Science Fair',
              'March 15, 2024',
              Icons.science_outlined,
            ),
            _buildEventItem(
              context,
              'Parent Meeting',
              'March 20, 2024',
              Icons.groups_outlined,
            ),
            _buildEventItem(
              context,
              'Sports Day',
              'March 25, 2024',
              Icons.sports_outlined,
            ),
            _buildEventItem(
              context,
              'Annual Function',
              'April 5, 2024',
              Icons.celebration_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventItem(BuildContext context, String event, String date, IconData icon) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              size: 7.sp,
              color: colorScheme.onSecondaryContainer,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  date,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}