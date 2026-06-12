import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'surah_audio_state.dart';

class SurahAudioCubit extends Cubit<SurahAudioState> {
  final player = AudioPlayer();
  bool isPlaying = false;

  SurahAudioCubit() : super(SurahAudioInitial()) {
    player.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.playing) {
        isPlaying = true;
        emit(PlaySurahAudio());
      } else if (state == PlayerState.paused || state == PlayerState.stopped) {
        isPlaying = false;
        emit(PauseSurahAudio());
      }
    });
  }
  void playAudio(String url) async {
    try {
      await player.play(UrlSource(url));
      emit(PlaySurahAudio());
    } catch (error) {
      emit(SurahAudioError(message: error.toString()));
    }
  }

  void pauseAudio() async {
    try {
      await player.pause();
      emit(PauseSurahAudio());
    } catch (error) {
      emit(SurahAudioError(message: error.toString()));
    }
  }
}
