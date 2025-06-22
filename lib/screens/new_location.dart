// lib/screens/new_location_screen.dart
import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart'; // Імпортуйте ваші стилі

class NewLocation extends StatelessWidget {
  const NewLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card( // <--- Використовуємо Card для вигляду картки
      margin: EdgeInsets.zero, // Видаляємо зовнішні відступи, щоб Card заповнював Dialog
      color: ColorsPalette.lightGreen, // Колір картки
      shape: RoundedRectangleBorder( // Закруглюємо кути картки
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Важливо для Dialog, щоб вміст не розтягувався на весь екран
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: ColorsPalette.blackGreen, size: 30), // Кнопка "X"
                    onPressed: () {
                      Navigator.of(context).pop(); // Закриває діалог
                    },
                  ),
                  const Text(
                    'New Location',
                    style: TextStyle(
                      color: ColorsPalette.blackGreen,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 30), // Для вирівнювання з кнопкою "X"
                ],
              ),
              const SizedBox(height: 20),

              // Location Name input
              const Text(
                'Location name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter location name',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                ),
              ),
              const SizedBox(height: 20),

              // Location map placeholder
              const Text(
                'Location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: ColorsPalette.basicGreen,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Icon(Icons.map, color: ColorsPalette.blackGreen, size: 100),
                ),
              ),
              const SizedBox(height: 20),

              // Add photos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add photos',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.blackGreen,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorsPalette.basicGreen,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, color: ColorsPalette.blackGreen, size: 30),
                      onPressed: () {
                        // Логіка для додавання фотографій (можна залишити порожнім)
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Date and time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const Text(
                'Data and time',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ColorsPalette.basicGreen,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  icon: const Icon(Icons.calendar_today, color: ColorsPalette.blackGreen, size: 30),
                  onPressed: () {
                    // Логіка для вибору дати та часу (можна залишити порожнім)
                  },
                ),
              ),
              ],
              ),
              const SizedBox(height: 50),

              // Save button (check mark)
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Закриває діалог
                  },
                  backgroundColor: WidgetStyles.mediumGreenEntry,
                  shape: RoundedRectangleBorder(
                    borderRadius: WidgetStyles.fabDecoration.borderRadius as BorderRadius,
                  ),
                  child: const Icon(Icons.check, color: WidgetStyles.blackColor, size: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}