import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtubeui/pages/constants.dart';

class Home_tab extends StatelessWidget {
  const Home_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: screensize.width * 0.11,
                        height: screensize.width * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/youtube.png'),
                                fit: BoxFit.fitHeight)),
                      ),
                      Text('YouTube',
                          style: GoogleFonts.lato(
                              color: constblack,
                              fontSize: 21,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('assets/cast.png'))),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('assets/bell.png'))),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('assets/search.png'))),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage('assets/mohanlal.jpg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screensize.width * 0.04,
            ),
       //itemcontainers
          ],
        ),
      ),
    ));
  }
}
