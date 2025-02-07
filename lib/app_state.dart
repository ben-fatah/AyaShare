import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:quran/quran.dart' as quran;
class MyAppState extends ChangeNotifier {
  // البيانات التي سنخزنها
  String _currentAyah = '';
  String _currentSurahName = '';
  int _currentVerseNumber = 0;

  // دالة لإنشاء آية عشوائية
  void generateRandomAyah() {
    final random = Random();
    int surahNumber = random.nextInt(114) + 1;
    int verseCount = quran.getVerseCount(surahNumber);
    int verseNumber = random.nextInt(verseCount) + 1;
    
    _currentAyah = quran.getVerse(surahNumber, verseNumber);
    _currentSurahName = quran.getSurahNameArabic(surahNumber);
    _currentVerseNumber = verseNumber;
    
    notifyListeners();
  }

  // جلب البيانات الحالية
  String get currentAyah => _currentAyah;
  String get currentSurahName => _currentSurahName;
  int get currentVerseNumber => _currentVerseNumber;

  List<String> favorites = [];

  // تهيئة أولية
  MyAppState() {
    generateRandomAyah();
  }

  // تبديل المفضلة باستخدام الآية كمعرّف
  void toggleFavorite(String ayah) {
    if (favorites.contains(ayah)) {
      favorites.remove(ayah);
    } else {
      favorites.add(ayah);
    }
    notifyListeners();
  }
}