import 'package:dio/dio.dart';
import 'package:my_quran_app/models/surah_info_model.dart';

class SurahInfoService {
  Dio dio = Dio();
  Future<SurahInfoModel> getSurahInfo({required int surahNumber}) async {
    Response response = await dio.get(
      "https://quranapi.pages.dev/api/$surahNumber.json",
    );
    final jsonData = response.data;
    return SurahInfoModel.fromJson(jsonData);
  }
}
