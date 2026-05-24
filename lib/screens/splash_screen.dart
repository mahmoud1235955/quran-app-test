import 'package:flutter/material.dart';
import 'package:my_quran_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Spacer(),
          Image.asset(
            'assets/sp_sc.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            'My Quran',
            style: TextStyle(
              color: Color.fromRGBO(149, 67, 255, 1),
              fontSize: MediaQuery.of(context).size.height * 0.035,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'Baca Al-Quran Dengan Mudah',
            style: TextStyle(
              color: Color.fromRGBO(168, 168, 168, 1),
              fontSize: MediaQuery.of(context).size.height * 0.018,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(
                MediaQuery.of(context).size.width * 0.4,
                MediaQuery.of(context).size.height * 0.05,
              ),
              backgroundColor: Color.fromRGBO(149, 67, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text(
              'Baca Sekarang',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
