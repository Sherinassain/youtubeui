import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtubeui/pages/containers/library_item.dart';

import '../constants.dart';

class Libraray_tab extends StatelessWidget {
  const Libraray_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.transparent),
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
                                  image: const DecorationImage(
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
                                icon: const ImageIcon(AssetImage('assets/cast.png'))),
                            SizedBox(
                              width: screensize.width * 0.01,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(AssetImage('assets/bell.png'))),
                            SizedBox(
                              width: screensize.width * 0.01,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon:
                                    const ImageIcon(AssetImage('assets/search.png'))),
                            SizedBox(
                              width: screensize.width * 0.01,
                            ),
                            const CircleAvatar(
                              radius: 17,
                              backgroundImage:
                                  AssetImage('assets/mohanlal.jpg'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Recent',
                        style: TextStyle(
                            color: constblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: screensize.width * 0.04,
                      ),
                      //items
                      Container(
                        width: double.infinity,
                        height: screensize.width * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:const [
                            //1
                             Library_container(
                                imagepath:
                                    'https://i.ytimg.com/vi/aEqM218qljU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCM2oPCekICmFhSi2TcJIJkd6dD0Q',
                                title: 'Rolex Entry bgm',
                                chanaelname: 'Runny list'),
                            //2
                             Library_container(
                                imagepath:
                                    'https://i.ytimg.com/vi/JsH1CEIMuYo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDybxkO0crNxChAQmzlS8pNDN2-DQ',
                                title: 'Kappa official ||',
                                chanaelname: 'Kappa Music'),
                            //3
                             Library_container(
                                imagepath:
                                    'https://i.ytimg.com/vi/wbYG8T80SOk/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDgRKGfg7oc_cdlRMP-ac6hpANdpA',
                                title: 'Ponnin Nadhi',
                                chanaelname: 'Tamil tips'),
                            //4
                             Library_container(
                                imagepath:
                                    'https://i.ytimg.com/vi/v1yfTA0MU2s/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA4AB-213OPBS1l2HdCztbrcWmeTA',
                                title: 'Crypto options',
                                chanaelname: 'Sharique Ft'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screensize.width * 0.02,
                      ),
                      Container(
                          width: double.infinity,
                          height: screensize.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black45)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage('assets/history.png'),
                                    color: constblack,
                                  ),
                                  SizedBox(
                                    width: screensize.width * 0.12,
                                  ),
                                  const Text(
                                    'History',
                                    style:  TextStyle(
                                        color: constblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screensize.width * 0.02,
                              ),
                              Row(
                                children: [
                                  const ImageIcon(
                                     AssetImage('assets/yourvideos.png'),
                                    color: constblack,
                                  ),
                                  SizedBox(
                                    width: screensize.width * 0.12,
                                  ),
                                  const Text(
                                    'Your Videos',
                                    style: TextStyle(
                                        color: constblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screensize.width * 0.02,
                              ),
                              Row(
                                children: [
                                  const ImageIcon(
                                     AssetImage('assets/download-multiple.png'),
                                    color: constblack,
                                  ),
                                  SizedBox(
                                    width: screensize.width * 0.12,
                                  ),
                                  const Text(
                                    'Downloads',
                                    style: TextStyle(
                                        color: constblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screensize.width * 0.02,
                              ),
                              Row(
                                children: [
                                  const ImageIcon(
                                     AssetImage('assets/yourmovies.png'),
                                    color: constblack,
                                  ),
                                  SizedBox(
                                    width: screensize.width * 0.12,
                                  ),
                                  const Text(
                                    'Your movies',
                                    style: const TextStyle(
                                        color: constblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screensize.width * 0.02,
                              ),
                              Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage('assets/watchlater.png'),
                                    color: constblack,
                                  ),
                                  SizedBox(
                                    width: screensize.width * 0.12,
                                  ),
                                  const Text(
                                    'Watch later',
                                    style:  TextStyle(
                                        color: constblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.06,
                  ),
                  const Text(
                    'Recent',
                    style:  TextStyle(
                        color: constblack,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: screensize.width * 0.06,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: screensize.width * 0.12,
                          ),
                          const Text(
                            'New Playlist',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screensize.width * 0.06,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.thumb_up,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: screensize.width * 0.12,
                          ),
                          const Text(
                            'Liked videos',
                            style: TextStyle(
                                color: constblack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
