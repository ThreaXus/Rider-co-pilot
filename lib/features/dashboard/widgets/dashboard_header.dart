import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Evening, ${DemoData.user.firstName} 👋",
          style: AppTextStyles.headline,
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          "The roads are calling.",
          style: AppTextStyles.body,
        ),
      ],
    );
  }
}