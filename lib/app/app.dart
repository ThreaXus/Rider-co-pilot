import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

class RiderCoPilotApp extends StatelessWidget {
  const RiderCoPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rider Co-Pilot',
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}