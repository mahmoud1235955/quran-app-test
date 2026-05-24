import 'package:flutter/material.dart';

class SurahInfoScreen extends StatefulWidget {
  const SurahInfoScreen({super.key, required this.index});
  final int index;
  @override
  State<SurahInfoScreen> createState() => _SurahInfoScreenState();
}

class _SurahInfoScreenState extends State<SurahInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final surah = fatiha[widget.index];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Text(
                    surah['en'],
                    style: const TextStyle(
                      color: Color.fromRGBO(149, 67, 255, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    surah['ar'],
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
            itemCount: fatiha.length,
            separatorBuilder: (_, _) => const Divider(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fatiha[index]['ar'],
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
                        fatiha[index]['en'],
                        style: const TextStyle(
                          color: Color.fromRGBO(36, 15, 79, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'poppins',
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(134, 62, 213, 0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 13,
                            backgroundColor: Color.fromRGBO(134, 62, 213, 1),
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
                              Icon(Icons.play_arrow_outlined, size: 30),
                              SizedBox(width: 10),
                              Icon(Icons.bookmark_border_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

const List<Map<String, dynamic>> fatiha = [
  {
    "ar": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
    "en":
        "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
  },
  {
    "ar": "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
    "en": "All praise is due to Allah, Lord of the worlds.",
  },
  {
    "ar": "الرَّحْمَٰنِ الرَّحِيمِ",
    "en": "The Entirely Merciful, the Especially Merciful.",
  },
  {"ar": "مَالِكِ يَوْمِ الدِّينِ", "en": "Master of the Day of Judgment."},
  {
    "ar": "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
    "en": "You alone we worship, and You alone we ask for help.",
  },
  {
    "ar": "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
    "en": "Guide us to the straight path.",
  },
  {
    "ar":
        "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ",
    "en":
        "The path of those upon whom You have bestowed favor, not of those who earned Your anger or of those who are astray.",
  },
];
