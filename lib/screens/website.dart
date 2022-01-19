import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/utils/size_config.dart';
import 'package:link/link.dart';


class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: SizeConfig.heightMultiplier! * 3,
            child: CircleAvatar(
              radius: SizeConfig.widthMultiplier! * 15,
              backgroundImage: const AssetImage(
                'assets/myself.jpeg',
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier! * 20,
            child: DefaultTextStyle(
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  fontSize: SizeConfig.textMultiplier! * 2,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'I am Saud Elabdullah',
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier! * 23,
            child: Container(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier! * 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Text(
                'About \nA software engineer student at King Fahd University\n Flutter passionate and open-source supporter',
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    fontSize: SizeConfig.textMultiplier! * 1.3,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier! * 33,
            left: SizeConfig.widthMultiplier! * 30,
            child: Container(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier! * 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Projects',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.textMultiplier! * 1.3,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    '1. Flutter budget planner 💵.\n2. Plant app UI 🌿.\n3. Spending tracker UI 💳.\n4. GlassMorphism Simple Example🧑‍💻.\nAnd Many other projects in my github repo 😉.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.textMultiplier! * 1.3,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier! * 36,
            right: SizeConfig.widthMultiplier! * 30,
            child: Container(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier! * 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Socials:',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.textMultiplier! * 1.3,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Link(
                    child: Text(
                      'Github 👾',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 1.3,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    url: 'https://github.com/SaudElabdullah',
                  ),
                  Link(
                    child: Text(
                      'LinkedIn 👨‍💻',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 1.3,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    url: 'https://www.linkedin.com/in/saud-elabdullah-100496205/',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
