import 'package:my_quran_app/models/audio_model.dart';

class SurahInfoModel {
  final String surahName;
  final String surahNameArabic;
  final AudioModel audio;
  final List<String> english;
  final List<String> arabic1;
  SurahInfoModel({
    required this.surahName,
    required this.surahNameArabic,
    required this.audio,
    required this.english,
    required this.arabic1,
  });
  factory SurahInfoModel.fromJson(Map<String, dynamic> json) {
    return SurahInfoModel(
      surahName: json['surahName'],
      surahNameArabic: json['surahNameArabic'],
      audio: AudioModel.fromJson(json["audio"]),
      english: List<String>.from(json['english']),
      arabic1: List<String>.from(json['arabic1']),
    );
  }
}
