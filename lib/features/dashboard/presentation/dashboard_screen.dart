import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/demo_data.dart';
import '../../../shared/widgets/rc_button.dart';
import '../../../shared/widgets/rc_card.dart';
import '../../../shared/widgets/navigation/bottom_navigation.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/motorcycle_card.dart';
import '../widgets/weather_card.dart';
import '../widgets/fuel_card.dart';
import '../widgets/map_card.dart';
import '../widgets/rider_app_bar.dart';
import '../widgets/ride_action_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Greeting
              const RiderAppBar(),

              const SizedBox(height: AppSpacing.md),

              // Motorcycle Card
              const MotorcycleCard(),

              const SizedBox(height: AppSpacing.lg),

Row(
  children: const [
    Expanded(
      child: WeatherCard(),
    ),

    SizedBox(width: AppSpacing.md),

    Expanded(
      child: FuelCard(),
    ),
  ],
),

              const SizedBox(height: AppSpacing.xl),

              // Map Placeholder
              const MapCard(),

              const RideActionCard(),
              
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
