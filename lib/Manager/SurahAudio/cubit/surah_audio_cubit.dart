import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'surah_audio_state.dart';

class SurahAudioCubit extends Cubit<SurahAudioState> {
  SurahAudioCubit() : super(SurahAudioInitial());
}
