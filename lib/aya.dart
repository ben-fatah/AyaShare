import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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
              // style: GoogleFonts.amiri( // استخدام Google Fonts
              //   textStyle: theme.textTheme.titleLarge!.copyWith(
              //     color: theme.colorScheme.onPrimary,
              //     fontSize: 24,
              //   ),
              // ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 12),
            // نص الآية
            Text(
              ayahText,
              // style: GoogleFonts.amiri( // استخدام Google Fonts
              //   textStyle: theme.textTheme.titleLarge!.copyWith(
              //     color: theme.colorScheme.onPrimary,
              //     fontSize: 24,
              //   ),
              // ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
