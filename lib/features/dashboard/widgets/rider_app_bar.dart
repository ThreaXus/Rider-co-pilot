import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';

class RiderAppBar extends StatelessWidget {
  const RiderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        top: AppSpacing.md,
        bottom: AppSpacing.md,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Evening, ${DemoData.user.firstName} 👋",
                  style: AppTextStyles.headline,
                ),
                const SizedBox(height: 4),
                const Text(
                  "📍 Veendam",
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),

          const CircleAvatar(
            radius: 20,
            child: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}