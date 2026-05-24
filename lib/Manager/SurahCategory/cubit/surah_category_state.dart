part of 'surah_category_cubit.dart';

@immutable
sealed class SurahCategoryState {}

final class SurahCategoryInitial extends SurahCategoryState {}

final class SurahCategoryLoading extends SurahCategoryState {}

final class SurahCategorySuccess extends SurahCategoryState {
  final List<SurahCategoryModel> surahs;
  final int index;
  SurahCategorySuccess({required this.surahs, required this.index});
}

final class SurahCategoryFailure extends SurahCategoryState {
  final String errorMessage;
  SurahCategoryFailure({required this.errorMessage});
}
