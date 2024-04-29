import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiwangram_mobile/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            // app name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.takeout_dining_rounded,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  "HAIWANGRAM",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.takeout_dining_rounded,
                  color: Colors.white,
                ),
              ],
            ),

            const SizedBox(height: 25),

            // splash
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/wild-animals.png'),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              "SOSMED UNTUK SEMUA HEWAN!",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),

            const SizedBox(height: 10),

            // subtitle
            Text(
              "Temui hewan menarik kesukaanmu di aplikasi ini di mana pun dan kapan pun!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // button
            MyButton(
              text: "Mulai Sekarang",
              onTap: () {
                Navigator.pushNamed(context, '/login_page');
              },
            )
          ],
        ),
      ),
    );
  }
}
