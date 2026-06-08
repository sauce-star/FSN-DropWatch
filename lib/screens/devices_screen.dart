import 'package:flutter/material.dart';
import 'package:fsn_dropwatch/utils/constants.dart';

class DevicesScreen extends StatefulWidget {
  const DevicesScreen({Key? key}) : super(key: key);

  @override
  State<DevicesScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Devices',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            children: [
              _buildDeviceCard(
                icon: Icons.water_drop,
                name: 'Kitchen Pipe Sensor',
                type: 'Connected',
                signal: 92,
              ),
              const SizedBox(height: AppSpacing.md),
              _buildDeviceCard(
                icon: Icons.water_drop,
                name: 'Bathroom Pipe Sensor',
                type: 'Connected',
                signal: 88,
              ),
              const SizedBox(height: AppSpacing.md),
              _buildDeviceCard(
                icon: Icons.water_drop,
                name: 'Main Pipe Sensor',
                type: 'Connected',
                signal: 90,
              ),
              const SizedBox(height: AppSpacing.md),
              _buildDeviceCard(
                icon: Icons.power,
                name: 'Smart Plug (Living Room)',
                type: 'Connected',
                signal: 85,
              ),
              const SizedBox(height: AppSpacing.lg),
              // Add New Device
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.divider),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.bluetooth,
                      color: AppColors.primary,
                      size: 48,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    const Text(
                      'Add New Device',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    const Text(
                      'Pair a new sensor or smart plug',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                        onPressed: () {},
                        child: const Text('Start Pairing'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeviceCard({
    required IconData icon,
    required String name,
    required String type,
    required int signal,
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
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.success,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$signal%',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              const Icon(
                Icons.signal_cellular_4_bar,
                color: AppColors.primary,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
