import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';
import '../../../shared/widgets/rc_button.dart';
import '../../../shared/widgets/rc_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rider Co-Pilot"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Greeting
              Text(
                "Good Evening, ${DemoData.user.firstName} 👋",
                style: AppTextStyles.headline,
              ),

              const SizedBox(height: AppSpacing.sm),

              Text(
                "The roads are calling.",
                style: AppTextStyles.body,
              ),

              const SizedBox(height: AppSpacing.lg),

              // Motorcycle Card
              RCCard(
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
              ),

              const SizedBox(height: AppSpacing.md),

              // Weather Card
              RCCard(
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
              ),

              const SizedBox(height: AppSpacing.md),

              // Fuel Card
              RCCard(
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
              ),

              const SizedBox(height: AppSpacing.xl),

              // Map Placeholder
              RCCard(
                child: SizedBox(
                  height: 180,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.map,
                          size: 60,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Map Preview",
                          style: AppTextStyles.title,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: AppSpacing.xl),

              RCButton(
                title: "Plan Ride",
                icon: Icons.navigation_rounded,
                onPressed: () {},
              ),

              const SizedBox(height: AppSpacing.md),

              RCButton(
                title: "Continue Ride",
                icon: Icons.play_arrow_rounded,
                primary: false,
                onPressed: () {},
              ),

              const SizedBox(height: AppSpacing.md),

              RCButton(
                title: "Garage",
                icon: Icons.motorcycle_rounded,
                primary: false,
                onPressed: () {},
              ),

              const SizedBox(height: AppSpacing.md),

              RCButton(
                title: "Explore",
                icon: Icons.explore_rounded,
                primary: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}