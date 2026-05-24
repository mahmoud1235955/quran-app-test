class SurahCategoryModel {
  final String surahName;
  final String surahNameArabic;
  final String revelationPlace;
  final int totalAyah;
  SurahCategoryModel({
    required this.surahName,
    required this.surahNameArabic,
    required this.revelationPlace,
    required this.totalAyah,
  });
  factory SurahCategoryModel.fromJson(Map<String, dynamic> json) {
    return SurahCategoryModel(
      surahName: json['surahName'] ?? "not Found",
      surahNameArabic: json['surahNameArabic'],
      revelationPlace: json['revelationPlace'],
      totalAyah: json['totalAyah'],
    );
  }
}
