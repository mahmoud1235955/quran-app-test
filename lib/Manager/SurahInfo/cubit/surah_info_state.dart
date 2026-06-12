part of 'surah_info_cubit.dart';

@immutable
sealed class SurahInfoState {}

final class SurahInfoInitial extends SurahInfoState {}

final class SurahInfoLoading extends SurahInfoState {}

final class SurahInfoLoaded extends SurahInfoState {
  final SurahInfoModel surahInfo;
  SurahInfoLoaded({required this.surahInfo});
}

final class SurahInfoError extends SurahInfoState {
  final String message;
  SurahInfoError({required this.message});
}
