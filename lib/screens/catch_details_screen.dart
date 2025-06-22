// lib/screens/catch_details_screen.dart
import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart'; // Імпортуйте ваші стилі

class CatchDetailsScreen extends StatelessWidget {
  final String species;
  final String length;
  final String weight;
  final String bait;
  final String time;
  final String note; // Додамо поле для нотаток, якщо воно буде передаватися

  const CatchDetailsScreen({
    super.key,
    required this.species,
    required this.length,
    required this.weight,
    required this.bait,
    required this.time,
    this.note = 'No notes available', // За замовчуванням, якщо нотаток немає
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: MediaQuery.of(context).size.height * 0.1), // Відступи з боків та зверху/знизу
      color: ColorsPalette.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: ColorsPalette.blackGreen, size: 30), // Кнопка повернення "назад"
                  onPressed: () {
                    Navigator.of(context).pop(); // Закриває діалог
                  },
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: 250, // Розмір іконки риби
                  height: 100,
                  decoration: BoxDecoration(
                    color: ColorsPalette.basicGreen, // Тимчасовий колір для фону риби
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset("assets/img/app_logo.png"), // Іконка риби
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.ballot_outlined, color: ColorsPalette.blackGreen, size: 24), // Іконка риби
                            const SizedBox(width: 10),
                            Text(species, style: const TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.straighten, color: ColorsPalette.blackGreen, size: 24), // Іконка лінійки
                            const SizedBox(width: 10),
                            Text('$length cm', style: const TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.balance, color: ColorsPalette.blackGreen, size: 24), // Іконка ваги
                            const SizedBox(width: 10),
                            Text('$weight g', style: const TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.phishing, color: ColorsPalette.blackGreen, size: 24), // Іконка гачка
                            const SizedBox(width: 10),
                            Text(bait, style: const TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today, color: ColorsPalette.blackGreen, size: 24), // Іконка календаря
                            const SizedBox(width: 10),
                            Text(time, style: const TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Note', style: TextStyle(fontSize: 16, color: ColorsPalette.blackGreen, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: ColorsPalette.basicGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            note,
                            style: const TextStyle(fontSize: 14, color: ColorsPalette.blackGreen),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 150, // Розмір для placeholder карти
                  decoration: BoxDecoration(
                    color: ColorsPalette.basicGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Icon(Icons.map, color: ColorsPalette.blackGreen, size: 80), // Іконка карти
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}