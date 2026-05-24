import 'package:flutter/material.dart';

class DoaTopImpWidget extends StatelessWidget {
  const DoaTopImpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset('assets/doa.png')),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Quran',
                style: TextStyle(
                  color: Color.fromRGBO(149, 67, 255, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                '''Baca Doa-Doa''',
                maxLines: 2,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                '19:21',
                style: TextStyle(
                  color: Color.fromRGBO(35, 35, 35, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'Ramadan 23, 1444 AH',
                style: TextStyle(
                  color: Color.fromRGBO(35, 35, 35, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(117, 29),
                  backgroundColor: Color.fromRGBO(149, 67, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Shubuh  4:17 AM',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
