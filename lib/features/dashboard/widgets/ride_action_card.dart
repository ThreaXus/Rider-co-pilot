import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/rc_button.dart';
import '../../../shared/widgets/rc_card.dart';

class RideActionCard extends StatelessWidget {
  const RideActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ready for your next ride?",
            style: AppTextStyles.title,
          ),

          const SizedBox(height: AppSpacing.sm),

          const Text(
            "Plan a new route or continue your current ride.",
            style: AppTextStyles.body,
          ),

          const SizedBox(height: AppSpacing.lg),

          Row(
            children: [
              Expanded(
                child: RCButton(
                  title: "Plan Ride",
                  icon: Icons.navigation_rounded,
                  onPressed: () {},
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              Expanded(
                child: RCButton(
                  title: "Continue",
                  icon: Icons.play_arrow_rounded,
                  primary: false,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}