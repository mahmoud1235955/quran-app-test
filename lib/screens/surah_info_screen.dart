import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran_app/Manager/SurahInfo/cubit/surah_info_cubit.dart';

class SurahInfoScreen extends StatelessWidget {
  const SurahInfoScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurahInfoCubit()..getSurahInfo(surahNumber: index),
      child: Scaffold(
        body: BlocBuilder<SurahInfoCubit, SurahInfoState>(
          builder: (context, state) {
            if (state is SurahInfoLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SurahInfoError) {
              return Center(child: Text(state.message));
            } else if (state is SurahInfoLoaded) {
              return Column(
                children: [
                  Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Column(
                              children: [
                                Text(
                                  state.surahInfo.surahName,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(149, 67, 255, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  state.surahInfo.surahNameArabic,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        SliverList.separated(
                          itemCount: state.surahInfo.arabic1.length,
                          separatorBuilder: (_, _) => const Divider(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SurahInfoScreen(index: index),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 8,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            134,
                                            62,
                                            213,
                                            0.05,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color.fromRGBO(
                                              134,
                                              62,
                                              213,
                                              1,
                                            ),
                                            child: Text(
                                              '${index + 1}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Icon(Icons.share_outlined),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.play_arrow_outlined,
                                                size: 30,
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.bookmark_border_outlined,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        state.surahInfo.arabic1[index],
                                        textDirection: TextDirection.rtl,
                                        style: const TextStyle(
                                          color: Color.fromRGBO(36, 15, 79, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Amiri',
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        state.surahInfo.english[index],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(36, 15, 79, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 10,
                      right: 10,
                    ),
                    height: 80,
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(134, 62, 213, 1),

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          state.surahInfo.audio.reciters[0].reciter,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.pause, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: Text('No data available'));
            }
          },
        ),
      ),
    );
  }
}
