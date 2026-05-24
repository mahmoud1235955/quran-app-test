import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:my_quran_app/Manager/Timer/cubit/timer_cubit.dart';

class SurahTopImgWidget extends StatelessWidget {
  const SurahTopImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                '''Baca Al-Quran Dengan Mudah''',
                maxLines: 2,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              BlocBuilder<TimerCubit, DateTime>(
                builder: (context, state) {
                  return Text(
                    DateFormat.jm().format(state),
                    style: TextStyle(
                      color: Color.fromRGBO(35, 35, 35, 1),
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins',
                    ),
                  );
                },
              ),
              Text(
                HijriCalendar.now().toFormat("MMMM dd yyyy"),
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
        Expanded(child: Image.asset('assets/mos.png')),
      ],
    );
  }
}
