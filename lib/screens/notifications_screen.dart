import 'package:flutter/material.dart';
import 'package:fsn_dropwatch/utils/constants.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'type': 'alert',
        'title': 'Possible waste detected',
        'subtitle': 'Kitchen tap running 6 min',
        'time': '10:42 AM',
        'icon': Icons.warning,
      },
      {
        'type': 'info',
        'title': 'Possible waste detected',
        'subtitle': 'Bathroom tap running 12 min',
        'time': '10:42 AM',
        'icon': Icons.info,
      },
      {
        'type': 'success',
        'title': 'High standby detected',
        'subtitle': 'TV standby for 2.5 hours',
        'time': 'Yesterday, 6:30 PM',
        'icon': Icons.check_circle,
      },
      {
        'type': 'device',
        'title': 'Device connected',
        'subtitle': 'Kitchen Pipe Sensor',
        'time': 'Yesterday, 11:15 AM',
        'icon': Icons.devices,
      },
      {
        'type': 'success',
        'title': 'Alert dismissed',
        'subtitle': 'Kitchen tap alert dismissed',
        'time': 'Yesterday, 10:42 AM',
        'icon': Icons.check_circle,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          final iconColor = _getIconColor(notification['type'] as String);

          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    notification['icon'] as IconData,
                    color: iconColor,
                    size: 24,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notification['title'] as String,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        notification['subtitle'] as String,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  notification['time'] as String,
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Color _getIconColor(String type) {
    switch (type) {
      case 'alert':
        return AppColors.warning;
      case 'success':
        return AppColors.success;
      case 'info':
        return AppColors.info;
      case 'device':
        return AppColors.primary;
      default:
        return Colors.grey;
    }
  }
}
