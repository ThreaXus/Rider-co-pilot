import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';
import '../../../shared/widgets/rc_card.dart';

class FuelCard extends StatelessWidget {
  const FuelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCCard(
      child: Row(
        children: [
          const Icon(
            Icons.local_gas_station,
            color: Colors.orange,
            size: 40,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Estimated Range",
                  style: AppTextStyles.title,
                ),
                Text(
                  "${DemoData.motorcycle.rangeKm} km remaining",
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