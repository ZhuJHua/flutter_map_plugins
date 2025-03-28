import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:latlong2/latlong.dart';
import 'package:pmtiles/pmtiles.dart';

class TestApp extends StatelessWidget {
  const TestApp({required this.pmTiles, super.key});

  final PmTilesArchive pmTiles;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
          options: const MapOptions(
            initialZoom: 0,
            initialCenter: LatLng(0, 0),
          ),
          children: [
            TileLayer(
              tileProvider: PmTilesTileProvider.fromArchive(pmTiles),
            ),
          ],
        ),
      ),
    );
  }
}
