import 'package:flutter/material.dart';
import 'package:fsn_dropwatch/utils/constants.dart';

class LeakHistoryScreen extends StatelessWidget {
  const LeakHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Leak History',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            children: [
              // Filter Buttons
              Row(
                children: [
                  _buildFilterButton('All', true),
                  const SizedBox(width: AppSpacing.sm),
                  _buildFilterButton('Water', false),
                  const SizedBox(width: AppSpacing.sm),
                  _buildFilterButton('Power', false),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              // Leak Items
              _buildLeakItem(
                icon: Icons.faucet,
                title: 'Kitchen tap',
                time: 'Today, 10:42 AM',
                duration: '6 min',
                volume: '9 L lost',
                cost: '\$0.04',
              ),
              const SizedBox(height: AppSpacing.md),
              _buildLeakItem(
                icon: Icons.shower,
                title: 'Bathroom tap',
                time: 'Yesterday, 8:15 PM',
                duration: '12 min',
                volume: '16 L lost',
                cost: '\$0.07',
              ),
              const SizedBox(height: AppSpacing.md),
              _buildLeakItem(
                icon: Icons.tv,
                title: 'TV Standby',
                time: 'Yesterday, 6:30 PM',
                duration: '2.5 h',
                volume: '45 Wh',
                cost: '\$0.03',
              ),
              const SizedBox(height: AppSpacing.md),
              _buildLeakItem(
                icon: Icons.power,
                title: 'Charger Standby',
                time: 'May 17, 11:20 PM',
                duration: '7 h',
                volume: '98 Wh',
                cost: '\$0.05',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton(String label, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: isActive ? AppColors.success : Colors.transparent,
        border: Border.all(
          color: isActive ? AppColors.success : AppColors.divider,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.white : AppColors.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLeakItem({
    required IconData icon,
    required String title,
    required String time,
    required String duration,
    required String volume,
    required String cost,
  }) {
    return Container(
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
          Icon(icon, color: AppColors.primary, size: 40),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                duration,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                '$volume ($cost)',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
