import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran_app/Manager/SurahCategory/cubit/surah_category_cubit.dart';

class SurahListWidget extends StatelessWidget {
  const SurahListWidget({super.key, required this.onPressed});
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahCategoryCubit, SurahCategoryState>(
      builder: (context, state) {
        if (state is SurahCategoryLoading) {
          return CircularProgressIndicator();
        } else if (state is SurahCategoryFailure) {
          return Text(state.errorMessage);
        } else if (state is SurahCategorySuccess) {
          return ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  onPressed(index);
                },
                child: Row(
                  children: [
                    Container(
                      width: 7,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(149, 67, 255, 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                          topLeft: Radius.circular(7),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/num_surat.png',
                              width: 36,
                              height: 36,
                            ),
                            Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          state.surahs[index].surahName,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              '${state.surahs[index].revelationPlace} ',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Image.asset(
                              'assets/elipse.png',
                              width: 4,
                              height: 4,
                            ),
                            Text(
                              ' ${state.surahs[index].totalAyah} AYAT',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        trailing: Text(
                          state.surahs[index].surahNameArabic,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Color.fromRGBO(134, 62, 213, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Arabic',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: state.surahs.length,

            physics: BouncingScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
        } else {
          return Text(" unhandeled error");
        }
      },
    );
  }
}
