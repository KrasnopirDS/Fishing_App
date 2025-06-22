import 'package:flutter/material.dart';
import 'package:fishing_app/styles/widget_style.dart';

class NewCatche extends StatelessWidget {
  const NewCatche({super.key});

  @override
  Widget build(BuildContext context) {
    return Card( // Використовуємо Card для вигляду картки
      margin: EdgeInsets.zero,
      color: ColorsPalette.lightGreen, // Колір картки з ваших стилів
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Закруглюємо кути
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0), // Зменшено загальний відступ
        child: SingleChildScrollView( // Залишаємо SingleChildScrollView на випадок, якщо на маленьких екранах все ж знадобиться прокрутка
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: ColorsPalette.blackGreen, size: 36), // Зменшено розмір іконки
                    onPressed: () {
                      Navigator.of(context).pop(); // Закриває діалог
                    },
                  ),
                  const Text(
                    'New Catche',
                    style: TextStyle(
                      color: ColorsPalette.blackGreen,
                      fontSize: 20, // Зменшено розмір шрифту заголовка
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 24), // Для вирівнювання з кнопкою "X"
                ],
              ),
              const SizedBox(height: 15), // Зменшено відступ

              // Catch name input
              const Text(
                'Catch name',
                style: TextStyle(
                  fontSize: 14, // Зменшено розмір шрифту
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5), // Зменшено відступ
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter catch name',
                  filled: true,
                  fillColor: ColorsPalette.basicGreen,
                  border: AppTheme.inputBorder,
                  enabledBorder: AppTheme.inputBorder,
                  focusedBorder: AppTheme.inputBorder,
                  isDense: true, // Зменшує внутрішні відступи поля вводу
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Зменшено внутрішній відступ
                ),
                style: TextStyle(fontSize: 14), // Зменшено розмір тексту в полі вводу
              ),
              const SizedBox(height: 15), // Зменшено відступ

              // Catch length input
              const Text(
                'Catch length',
                style: TextStyle(
                  fontSize: 14, // Зменшено розмір шрифту
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5), // Зменшено відступ
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
              const SizedBox(height: 15), // Зменшено відступ

              // Catch weight input
              const Text(
                'Catch weight',
                style: TextStyle(
                  fontSize: 14, // Зменшено розмір шрифту
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5), // Зменшено відступ
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
              const SizedBox(height: 15), // Зменшено відступ

              // Bait input
              const Text(
                'Bait',
                style: TextStyle(
                  fontSize: 14, // Зменшено розмір шрифту
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5), // Зменшено відступ
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
              const SizedBox(height: 15), // Зменшено відступ

              // Add note input
              const Text(
                'Add note',
                style: TextStyle(
                  fontSize: 14, // Зменшено розмір шрифту
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.blackGreen,
                ),
              ),
              const SizedBox(height: 5), // Зменшено відступ
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
                maxLines: 2, // Дозволити кілька рядків для нотаток
              ),
              const SizedBox(height: 15), // Зменшено відступ

              // Add photos (camera icon)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add photos',
                    style: TextStyle(
                      fontSize: 14, // Зменшено розмір шрифту
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.blackGreen,
                    ),
                  ),
                  Container(
                    width: 40, // Зменшено розмір контейнера
                    height: 40, // Зменшено розмір контейнера
                    decoration: BoxDecoration(
                      color: ColorsPalette.basicGreen,
                      borderRadius: BorderRadius.circular(8.0), // Зменшено радіус
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, color: ColorsPalette.blackGreen, size: 24), // Зменшено розмір іконки
                      onPressed: () {
                        // Логіка для додавання фотографій
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15), // Зменшено відступ

              // Date and time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Data and time',
                    style: TextStyle(
                      fontSize: 14, // Зменшено розмір шрифту
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.blackGreen,
                    ),
                  ),
                  Container(
                    width: 40, // Зменшено розмір контейнера
                    height: 40, // Зменшено розмір контейнера
                    decoration: BoxDecoration(
                      color: ColorsPalette.basicGreen,
                      borderRadius: BorderRadius.circular(8.0), // Зменшено радіус
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.calendar_today, color: ColorsPalette.blackGreen, size: 24), // Зменшено розмір іконки
                      onPressed: () {
                        // Логіка для вибору дати та часу
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Зменшено відступ перед кнопкою збереження

              // Save button (check mark)
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Закриває діалог
                  },
                  backgroundColor: WidgetStyles.mediumGreenEntry,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Зменшено радіус FAB
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