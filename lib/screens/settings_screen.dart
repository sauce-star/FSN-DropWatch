import 'package:flutter/material.dart';
import 'package:fsn_dropwatch/utils/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            children: [
              // User Profile
              Container(
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
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          'JD',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'John D.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: AppSpacing.xs),
                          Text(
                            'john@sample.com',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios,
                        color: AppColors.textSecondary, size: 16),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              // Settings Menu Items
              _buildSettingItem(
                icon: Icons.person,
                title: 'Profile',
                subtitle: 'Edit your profile',
              ),
              const Divider(height: 1),
              _buildSettingItem(
                icon: Icons.notifications,
                title: 'Alert Preferences',
                subtitle: 'Manage notifications',
              ),
              const Divider(height: 1),
              _buildSettingItem(
                icon: Icons.straighten,
                title: 'Units',
                subtitle: 'Liters, kWh >',
              ),
              const Divider(height: 1),
              _buildSettingItem(
                icon: Icons.link,
                title: 'Connected Accounts',
                subtitle: 'Link third-party services',
              ),
              const Divider(height: 1),
              _buildSettingItem(
                icon: Icons.info,
                title: 'About DropWatch',
                subtitle: 'Version 1.0.0',
              ),
              const Divider(height: 1),
              _buildSettingItem(
                icon: Icons.help,
                title: 'Help & Support',
                subtitle: 'Get help and support',
              ),
              const SizedBox(height: AppSpacing.lg),
              // Log Out Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.warning,
                    padding:
                        const EdgeInsets.symmetric(vertical: AppSpacing.md),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 24),
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
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios,
              color: AppColors.textSecondary, size: 16),
        ],
      ),
    );
  }
}
