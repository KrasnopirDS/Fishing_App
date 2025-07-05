import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';

class LocationDetailScreen extends StatelessWidget {
  final String locationName;

  const LocationDetailScreen({super.key, required this.locationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalette.lightGreen,
      appBar: AppBar(
        title: Text(
          locationName,
          style: AppTheme.theme.appBarTheme.titleTextStyle,
        ),
        backgroundColor: ColorsPalette.basicGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Location Name: $locationName',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorsPalette.blackGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}