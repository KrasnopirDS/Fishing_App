// lib/screens/catches.dart
import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';
import 'package:fishing_app/screens/app_darwer.dart';
import 'package:fishing_app/screens/new_catche.dart';
import 'package:fishing_app/screens/catch_details_screen.dart';

class CatchesScreen extends StatelessWidget {
  final String fishingLogTitle;
  final String fishingLogDate;

  const CatchesScreen({
    super.key,
    required this.fishingLogTitle,
    required this.fishingLogDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalette.lightGreen,
      appBar: AppBar(
        backgroundColor: ColorsPalette.basicGreen,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: ColorsPalette.blackGreen, size: 48),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Column(
          children: [
            Text(
              'Catches',
              style: AppTheme.theme.appBarTheme.titleTextStyle,
            ),
            Text(
              fishingLogTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorsPalette.blackGreen,
              ),
            ),
            Text(
              fishingLogDate,
              style: const TextStyle(
                fontSize: 14,
                color: ColorsPalette.blackGreen,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CatchDetailsScreen(
                    species: 'Crucian carp',
                    length: '15',
                    weight: '150',
                    bait: 'Worm',
                    time: '1 may 2025\n7:20',
                    note: 'Caught near the old oak tree. It was a sunny morning. The fish was quite active.',
                  );
                },
              );
            },
            child: const CatchEntry(
              species: 'Crucian carp',
              weight: '150g',
              length: '15cm',
              time: '7:20',
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CatchDetailsScreen(
                    species: 'Perch',
                    length: '19',
                    weight: '350',
                    bait: 'Spinner',
                    time: '1 may 2025\n7:36',
                    note: 'Fought hard, great catch! Used a small spinnerbait in the reeds.',
                  );
                },
              );
            },
            child: const CatchEntry(
              species: 'Perch',
              weight: '350g',
              length: '19cm',
              time: '7:36',
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: FloatingActionButton(
                heroTag: "backBtn",
                onPressed: () {
                  Navigator.of(context).pop();
                },
                backgroundColor: WidgetStyles.mediumGreenEntry,
                shape: RoundedRectangleBorder(
                  borderRadius: WidgetStyles.fabDecoration.borderRadius as BorderRadius,
                ),
                child: const Icon(Icons.arrow_back_ios_new, color: WidgetStyles.blackColor, size: 30),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              heroTag: "addBtn",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: const NewCatche(),
                    );
                  },
                );
              },
              backgroundColor: WidgetStyles.mediumGreenEntry,
              shape: RoundedRectangleBorder(
                borderRadius: WidgetStyles.fabDecoration.borderRadius as BorderRadius,
              ),
              child: const Icon(Icons.add, color: WidgetStyles.blackColor, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}


class CatchEntry extends StatelessWidget {
  final String species;
  final String weight;
  final String length;
  final String time;

  const CatchEntry({
    super.key,
    required this.species,
    required this.weight,
    required this.length,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: WidgetStyles.entryBoxDecoration,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: WidgetStyles.fishingIconContainerDecoration,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: WidgetStyles.fishingIconTopLeftDecoration,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: WidgetStyles.fishingIconBottomRightDecoration,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  species,
                  style: WidgetStyles.entryTitleStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  'Weight: $weight   Length: $length',
                  style: WidgetStyles.entryDateStyle,
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: WidgetStyles.blackColor),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}