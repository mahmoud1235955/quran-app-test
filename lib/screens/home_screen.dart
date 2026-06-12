import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran_app/Manager/SurahCategory/cubit/surah_category_cubit.dart';
import 'package:my_quran_app/Manager/Timer/cubit/timer_cubit.dart';
import 'package:my_quran_app/screens/surah_info_screen.dart';
import 'package:my_quran_app/widgets/doa_list_widget.dart';
import 'package:my_quran_app/widgets/doa_top_imp_widget.dart';
import 'package:my_quran_app/widgets/elev_widget.dart';
import 'package:my_quran_app/widgets/surah_list_widget.dart';
import 'package:my_quran_app/widgets/surah_top_img_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TimerCubit()..startTimer()),
        BlocProvider(
          create: (context) => SurahCategoryCubit()..getSurahCategory(),
        ),
      ],
      child: BlocBuilder<SurahCategoryCubit, SurahCategoryState>(
        builder: (context, state) {
          final int selectedIndex = context.read<SurahCategoryCubit>().index;
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(left: 10, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  selectedIndex == 0 ? SurahTopImgWidget() : DoaTopImpWidget(),
                  SizedBox(height: 30),
                  Text(
                    'Kategori',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Row(
                    children: [
                      ElevWidget(
                        text: 'Surah',
                        isSelected: selectedIndex == 0,
                        onPressed: () {
                          context.read<SurahCategoryCubit>().changeIndex(
                            newIndex: 0,
                          );
                        },
                      ),
                      SizedBox(width: 15),
                      ElevWidget(
                        text: 'DOA',
                        isSelected: selectedIndex == 1,
                        onPressed: () {
                          context.read<SurahCategoryCubit>().changeIndex(
                            newIndex: 1,
                          );
                        },
                      ),
                    ],
                  ),

                  Expanded(
                    child: selectedIndex == 0
                        ? SurahListWidget(
                            onPressed: (int index) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SurahInfoScreen(index: index + 1),
                                ),
                              );
                            },
                          )
                        : DoaListWidget(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
