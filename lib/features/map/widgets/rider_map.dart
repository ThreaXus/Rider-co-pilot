import 'package:flutter/material.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class RiderMap extends StatelessWidget {
  const RiderMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MapLibreMap(
      styleString: "https://demotiles.maplibre.org/style.json",
      initialCameraPosition: CameraPosition(
        target: LatLng(53.1061, 6.8797),
        zoom: 12,
      ),
      compassEnabled: true,
      myLocationEnabled: false,
    );
  }
}