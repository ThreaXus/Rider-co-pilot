import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';
import '../../../shared/widgets/rc_card.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCCard(
      child: Row(
        children: [
          const Icon(
            Icons.wb_sunny_rounded,
            color: Colors.orange,
            size: 40,
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${DemoData.weather.temperature}°C",
                  style: AppTextStyles.title,
                ),
                Text(
                  DemoData.weather.condition,
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