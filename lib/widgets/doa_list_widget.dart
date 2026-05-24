import 'package:flutter/material.dart';

class DoaListWidget extends StatelessWidget {
  const DoaListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final doa = duas[index];
        return Row(
          children: [
            Container(
              width: 7,
              height: 72,
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
                    Image.asset('assets/num_surat.png', width: 36, height: 36),
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
                  doa['title'],
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doa['ar'],
                      style: TextStyle(
                        color: Color.fromRGBO(149, 67, 255, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      doa['latin'],
                      style: TextStyle(
                        color: Color.fromRGBO(188, 188, 188, 1),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Italic',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      itemCount: duas.length,

      physics: BouncingScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}

const List<Map<String, dynamic>> duas = [
  {
    "title": "Doa sebelum tidur",
    "ar":
        "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
    "latin": "Alhamdulillahil-ladzi ahyana ba'da ma amatana wa ilaihin-nusyur",
  },
  {
    "title": "Doa bangun tidur",
    "ar":
        "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
    "latin": "Alhamdulillahil-ladzi ahyana ba'da ma amatana wa ilaihin-nusyur",
  },
  {
    "title": "Doa masuk rumah",
    "ar":
        "بِسْمِ اللَّهِ وَلَجْنَا، وَبِسْمِ اللَّهِ خَرَجْنَا، وَعَلَى رَبِّنَا تَوَكَّلْنَا",
    "latin":
        "Bismillahi walajna, wa bismillahi kharajna, wa 'ala rabbina tawakkalna",
  },
  {
    "title": "Doa keluar rumah",
    "ar":
        "بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ، لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
    "latin":
        "Bismillahi tawakkaltu 'alallah, la hawla wa la quwwata illa billah",
  },
  {"title": "Doa sebelum makan", "ar": "بِسْمِ اللَّهِ", "latin": "Bismillah"},
  {
    "title": "Doa sesudah makan",
    "ar":
        "الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ",
    "latin":
        "Alhamdulillahilladzi at'amani hadza wa razaqanihi min ghairi hawlin minni wa la quwwah",
  },
  {
    "title": "Doa naik kendaraan",
    "ar":
        "سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ",
    "latin":
        "Subhanalladzi sakhkhara lana hadza wa ma kunna lahu muqrinin wa inna ila rabbina lamunqalibun",
  },
  {
    "title": "Doa masuk masjid",
    "ar": "اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ",
    "latin": "Allahummaftah li abwaba rahmatik",
  },
];
