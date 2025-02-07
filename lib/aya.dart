import 'package:flutter/material.dart';


class AyaCard extends StatelessWidget {
  final String ayahText;
  final String surahName;
  final int verseNumber;

  const AyaCard({
    super.key,
    required this.ayahText,
    required this.surahName,
    required this.verseNumber,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // عنوان السورة
            Text(
              '$surahName - آية $verseNumber',
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 24,
                fontFamily: 'Amiri', // Ensure you have the font asset added in pubspec.yaml
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 12),
            // نص الآية
            Text(
              ayahText,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 20,
                fontFamily: 'Amiri', // Ensure you have the font asset added in pubspec.yaml
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
