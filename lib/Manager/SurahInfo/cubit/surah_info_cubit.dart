import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_quran_app/models/surah_info_model.dart';
import 'package:my_quran_app/service/surah_info_service.dart';

part 'surah_info_state.dart';

class SurahInfoCubit extends Cubit<SurahInfoState> {
  SurahInfoCubit() : super(SurahInfoInitial());
  Future<void> getSurahInfo({required int surahNumber}) async {
    try {
      emit(SurahInfoLoading());
      SurahInfoModel surahInfo = await SurahInfoService().getSurahInfo(
        surahNumber: surahNumber,
      );
      emit(SurahInfoLoaded(surahInfo: surahInfo));
    } catch (error) {
      emit(SurahInfoError(message: error.toString()));
    }
  }
}
