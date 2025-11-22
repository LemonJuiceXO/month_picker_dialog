///Extension on DateTime to get the first day of month
extension MyDateExtension on DateTime? {
  DateTime? firstDayOfMonth() {
    if (this != null) {
      return DateTime(this!.year, this!.month);
    }
    return null;
  }

  DateTime? lastDayOfMonth() {
    if (this != null) {
      return DateTime(this!.year, this!.month + 1, 0);
    }
    return null;
  }
}

extension NullableDateTimeExtension on DateTime? {
  bool isBetween(DateTime start, DateTime end) {
    if (this == null) {
      return false;
    } else {
      return this!.compareTo(start) >= 0 && this!.compareTo(end) <= 0;
    }
  }

  bool nullableIsBefore(DateTime end) {
    if (this == null) {
      return false;
    } else {
      return this!.compareTo(end) < 0;
    }
  }
}

extension DateStringExtensions on String {
  List<String> get westernArabicNumbers => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  List<String> get easternArabicNumbers => ["٠", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"];

  List<String> get algerianMonthsArabic => [
        "جانفي", // January
        "فيفري", // February
        "مارس", // March
        "أفريل", // April
        "ماي", // May
        "جوان", // June
        "جويلية", // July
        "أوت", // August
        "سبتمبر", // September
        "أكتوبر", // October
        "نوفمبر", // November
        "ديسمبر" // December
      ];

  List<String> get arabicMonths => [
        "يناير", // January
        "فبراير", // February
        "مارس", // March
        "أبريل", // April
        "مايو", // May
        "يونيو", // June
        "يوليو", // July
        "أغسطس", // August
        "سبتمبر", // September
        "أكتوبر", // October
        "نوفمبر", // November
        "ديسمبر" // December
      ];
  String get formatArabicNumbers {
    String formatedString = this;

    for (int i = 0; i < easternArabicNumbers.length; i++) {
      final easternNum = easternArabicNumbers[i];
      final westernNum = westernArabicNumbers[i];
      formatedString = formatedString.replaceAll(easternNum, westernNum);
    }

    for (int i = 0; i < arabicMonths.length; i++) {
      final arabicMonth = arabicMonths[i];
      final algerianArabicMonth = algerianMonthsArabic[i];
      formatedString = formatedString.replaceAll(arabicMonth, algerianArabicMonth);
    }

    print(formatedString);

    return formatedString;
  }
}
