import 'dart:math';
import 'package:aya_share/app_state.dart';
// import 'package:quran/quran.dart' as quran;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// ملف يحتوي على AyaCard

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>(); // مراقبة حالة التطبيق
    var random = Random();

    // اختيار رقم سورة عشوائي (من 1 إلى 114)
    final surahNumber = random.nextInt(114) + 1;

    // // الحصول على عدد الآيات في السورة المختارة
    // final verseCount = quran.getVerseCount(surahNumber);

    // // اختيار رقم آية عشوائي داخل السورة
    // final verseNumber = random.nextInt(verseCount) + 1;

    // // الحصول على نص الآية
    // final ayahText = quran.getVerse(surahNumber, verseNumber);

    // // الحصول على اسم السورة بالعربية
    // final surahName = quran.getSurahNameArabic(surahNumber);

    // تحديد الأيقونة بناءً على المفضلة
    // // IconData icon = appState.favorites.contains(ayahText)
    //     ? Icons.favorite
    //     : Icons.favorite_border;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // عرض بطاقة الآية
            // AyaCard(
            //   // ayahText: ayahText,
            //   // surahName: surahName,
            //   // verseNumber: verseNumber,
            // ),
            SizedBox(height: 20), // تباعد بين العناصر
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // زر الإعجاب
                ElevatedButton.icon(
                  onPressed: () => appState.toggleFavorite("ayahText"),
                  // icon: Icon(icon),
                  label: Text('اعجبني',style:  TextStyle( fontFamily: 'Amiri',),),
                ),
                SizedBox(width: 10), // تباعد بين الأزرار
                // زر التالي
                ElevatedButton(
                  onPressed: () => appState.generateRandomAyah(),
                  child: Text('التالي',style:  TextStyle( fontFamily: 'Amiri',),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}