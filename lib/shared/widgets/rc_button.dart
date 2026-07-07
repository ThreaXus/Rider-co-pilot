import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';

class RCButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool primary;

  const RCButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          title,
          style: AppTextStyles.button,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              primary ? AppColors.primary : AppColors.surface,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
        ),
      ),
    );
  }
}