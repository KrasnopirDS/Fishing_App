import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';

class NewCatche extends StatelessWidget {
  const NewCatche({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: ColorsPalette.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: ColorsPalette.blackGreen, size: 36),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const Text(
                    'New Catche',
                    style: TextStyle(
                      color: ColorsPalette.blackGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
              const SizedBox(height: 15),

              // Catch name input
              const Text(
                'Catch name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter catch name',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 15),

              // Catch length input
              const Text(
                'Catch length',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter catch length',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 15),

              // Catch weight input
              const Text(
                'Catch weight',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter catch weight',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 15),

              // Bait input
              const Text(
                'Bait',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter bait',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 15),

              const Text(
                'Add note',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter add note',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
                maxLines: 2,
              ),
              const SizedBox(height: 15),

              // Add photos (camera icon)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add photos',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.blackGreen,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorsPalette.basicGreen,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, color: ColorsPalette.blackGreen, size: 24),
                      onPressed: () {

                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Data and time',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.blackGreen,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorsPalette.basicGreen,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.calendar_today, color: ColorsPalette.blackGreen, size: 24),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Save button (check mark)
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: WidgetStyles.mediumGreenEntry,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Icon(Icons.check, color: WidgetStyles.blackColor, size: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}