import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';
import '../../../shared/widgets/rc_card.dart';

class MotorcycleCard extends StatelessWidget {
  const MotorcycleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCCard(
      child: Row(
        children: [
          const Icon(
            Icons.motorcycle,
            size: 40,
            color: Colors.orange,
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DemoData.motorcycle.fullName,
                  style: AppTextStyles.title,
                ),

                Text(
                  "${DemoData.motorcycle.year} • ${DemoData.motorcycle.mileage} km",
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}