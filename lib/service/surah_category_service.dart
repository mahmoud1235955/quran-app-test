import 'package:dio/dio.dart';
import 'package:my_quran_app/models/surah_category_model.dart';

class SurahCategoryService {
  Dio dio = Dio();
  Future<List<SurahCategoryModel>> getSurahCategory() async {
    Response response = await dio.get(
      "https://quranapi.pages.dev/api/surah.json",
    );
    List<dynamic> jsonData = response.data;
    return jsonData.map((e) => SurahCategoryModel.fromJson(e)).toList();
  }
}
