part of 'surah_audio_cubit.dart';

@immutable
sealed class SurahAudioState {}

final class SurahAudioInitial extends SurahAudioState {}

final class PlaySurahAudio extends SurahAudioState {}

final class PauseSurahAudio extends SurahAudioState {}

final class SurahAudioError extends SurahAudioState {
  final String message;
  SurahAudioError({required this.message});
}
