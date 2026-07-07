import 'package:flutter/material.dart';

import '../../map/widgets/rider_map.dart';
import '../../../shared/widgets/rc_card.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCCard(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: 320,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const RiderMap(),

              Positioned(
                top: 16,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87.withValues(alpha: 0.85),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Where to, Rider?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 16,
                bottom: 16,
                child: FloatingActionButton.small(
                  heroTag: "map_location",
                  onPressed: () {},
                  child: const Icon(Icons.my_location),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}