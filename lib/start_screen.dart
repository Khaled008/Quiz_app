import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-new.png',
            width: 300,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontFamily: GoogleFonts.aladin().fontFamily,
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt,
                color: Colors.white, size: 24),
            label: Text(
              'Start Quiz',
              style: TextStyle(
                fontFamily: GoogleFonts.aladin().fontFamily,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
