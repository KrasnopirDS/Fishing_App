import 'package:fishing_app/screens/new_location.dart';
import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';
import 'package:fishing_app/screens/app_darwer.dart';
import 'package:fishing_app/screens/catches.dart';

class FishingLog extends StatelessWidget {
  const FishingLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetStyles.lightGreenBackground,
      appBar: AppBar(
        backgroundColor: WidgetStyles.mediumGreenEntry,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: WidgetStyles.blackColor, size: 48),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'Fishing Log',
          style: WidgetStyles.appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          FishingLogEntry(
            title: 'Lucky Day',
            date: '1 may 2025',
          ),
          SizedBox(height: 10),
          FishingLogEntry(
            title: 'Black Friday',
            date: '18 june 2024',
          ),
          SizedBox(height: 10),
          FishingLogEntry(
            title: 'Perch Sunday',
            date: '21 august 2022',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: NewLocation(),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class FishingLogEntry extends StatelessWidget {
  final String title;
  final String date;

  const FishingLogEntry({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CatchesScreen(
              fishingLogTitle: title,
              fishingLogDate: date,
            ),
          ),
        );
      },
      child: Container(
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
                    title,
                    style: WidgetStyles.entryTitleStyle,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    date,
                    style: WidgetStyles.entryDateStyle,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit, color: WidgetStyles.blackColor),
              onPressed: () {
                // Handle edit button press
              },
            ),
          ],
        ),
      ),
    );
  }
}