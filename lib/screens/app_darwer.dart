import 'package:fishing_app/screens/all_catches.dart';
import 'package:fishing_app/screens/fishing_log.dart';
import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsPalette.lightGreen, // Using lightGreen from ColorsPalette
      child: Column(
        children: [
          // Drawer Header
          Container(
            height: 120,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: ColorsPalette.basicGreen, // Using basicGreen for header background
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Fishing mesh',
                  style: TextStyle(
                    color: ColorsPalette.blackGreen, // Using blackGreen for text
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_left, color: ColorsPalette.blackGreen, size: 30), // Using blackGreen for icon
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
              ],
            ),
          ),
          // Drawer Menu Items
          ListTile(
            leading: const Icon(Icons.menu_book, color: ColorsPalette.oceanGreen, size: 30), // Using oceanGreen for icons
            title: const Text(
              'Fishing Log',
              style: TextStyle(
                color: ColorsPalette.blackGreen, // Using blackGreen for text
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FishingLog()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phishing, color: ColorsPalette.oceanGreen, size: 30),
            title: const Text(
              'Catches',
              style: TextStyle(
                color: ColorsPalette.blackGreen,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AllCatchesScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.map, color: ColorsPalette.oceanGreen, size: 30),
            title: const Text(
              'Map',
              style: TextStyle(
                color: ColorsPalette.blackGreen,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const Spacer(),
          // Settings Item
          ListTile(
            leading: const Icon(Icons.settings, color: ColorsPalette.oceanGreen, size: 30),
            title: const Text(
              'Settings',
              style: TextStyle(
                color: ColorsPalette.blackGreen,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}