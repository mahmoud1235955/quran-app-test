import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_quran_app/models/surah_category_model.dart';
import 'package:my_quran_app/service/surah_category_service.dart';

part 'surah_category_state.dart';

class SurahCategoryCubit extends Cubit<SurahCategoryState> {
  int index = 0;
  List<SurahCategoryModel> surah = [];
  SurahCategoryCubit() : super(SurahCategoryInitial());

  Future<void> getSurahCategory() async {
    try {
      emit(SurahCategoryLoading());
      surah = await SurahCategoryService().getSurahCategory();
      emit(SurahCategorySuccess(surahs: surah, index: index));
    } catch (error) {
      emit(SurahCategoryFailure(errorMessage: error.toString()));
    }
  }

  void changeIndex({required int newIndex}) {
    index = newIndex;
    emit(SurahCategorySuccess(surahs: surah, index: index));
  }
}
