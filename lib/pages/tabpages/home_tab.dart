import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtubeui/pages/constants.dart';
import 'package:youtubeui/pages/containers/home_itemcontainer.dart';

import '../containers/circular_container.dart';

class Home_tab extends StatelessWidget {
  const Home_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
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
                          icon: const ImageIcon( AssetImage('assets/bell.png'))),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(AssetImage('assets/search.png'))),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      const CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage('assets/mohanlal.jpg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            bottom: const TabBar(
                isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: constblack,
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                indicatorColor: constblack,
                labelStyle:  TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Malayalam',
                  ),
                  Tab(
                    text: 'Songs',
                  ),
                   Tab(
                    text: 'Mixed',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            Home_tab1(),
            Home_tab2(),
            const Home_tab1(),
            Home_tab2(),
          ])),
    );
  }
}

class Home_tab1 extends StatelessWidget {
  const Home_tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            children: [
              ///
              SizedBox(
                height: screensize.width * 0.04,
              ),
              //itemcontainers
              Expanded(
                child: ListView(
                  children:const [
                    //1
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/OM1Y8LBHraY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA6XPK71QFvnw7f852oWoY9muv6kA',
                      iconprofilepath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9j3dT54Qcj6lSw0AFCuDSAExSIbhxKeVcw00MFnTh1wb5BO6m-lTAHzR8kwhAPKD3D2g&usqp=CAU',
                      maintitle: 'BHARATI APARTMENTS | Part 2 |',
                      subtitle: 'Comedy',
                      chanelname: 'Karikku Fliq',
                      views: '4.8',
                      durations: '15:07',
                      month: '3',
                      KorM: 'M',
                    ),
                    //2
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/6LD30ChPsSs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDO-GZK3YdHEcZGArxX2oJKosvBMA',
                      iconprofilepath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBW5CThfWg_RNQjZ3OSAO2sLBYtWJFKm2pUw&usqp=CAU',
                      maintitle: '96 Songs|The Life of Ram Video Song|',
                      subtitle: 'Tamil Thirai',
                      chanelname: 'Think music',
                      views: '106',
                      durations: '04:30',
                      month: '11',
                      KorM: 'M',
                    ),
                    //3
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/_kcJyReMpx0/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBh-RfC2Css0Mh7192iMO8Vfkqvjw',
                      iconprofilepath:
                          'https://yt3.ggpht.com/fSJW9y7epIA9BDfQhtdzmY7TFkZeO673oo-cLXvEc6GqEfb7mUMjYN3jFhyHKDc-JMgEPOzc=s88-c-k-c0x00ffffff-no-rj',
                      maintitle: 'iPhone 14 pro | My Experience|',
                      subtitle: 'Vlog',
                      chanelname: 'CallMeShazzam',
                      views: '779',
                      durations: '15:28',
                      month: '1',
                      KorM: 'K',
                    ),
                    //4
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/an_webp/31nqsOYjhEo/mqdefault_6s.webp?du=3000&sqp=CKyvv5oG&rs=AOn4CLBPBeUQfTQfyZ6YuXqe2Cej3h10Jg',
                      iconprofilepath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9j3dT54Qcj6lSw0AFCuDSAExSIbhxKeVcw00MFnTh1wb5BO6m-lTAHzR8kwhAPKD3D2g&usqp=CAU',
                      maintitle: 'JABLA | Episode1 | Karikku Fliq |',
                      subtitle: 'Comedy',
                      chanelname: 'Karikku Fliq',
                      views: '5.8',
                      durations: '21:08',
                      month: '1',
                      KorM: 'M',
                    ),
                    //5
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/PNR06O9sSio/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD5N1vUmy--R-_l9a67Tu80wPQy9Q',
                      iconprofilepath:
                          'https://play-lh.googleusercontent.com/rMgagys9KOji0wHPQzdDeS2QFe5lbOPZ0q_PsMl98kGc2putJD5gFUO1Xz_vE9siqdo',
                      maintitle: 'Asianet News Live Malayalam |',
                      subtitle: 'News',
                      chanelname: 'Asianet News|',
                      views: '2.7',
                      durations: '13:20',
                      month: '4',
                      KorM: 'K',
                    ),
                    //6
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/pJ4hrq3VXFk/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA_DlJTz_feI_tXXHop6F_u-nS-iA',
                      iconprofilepath:
                          'https://www.twentyfournews.com/wp-content/uploads/2019/11/24-logo-HD.jpg',
                      maintitle: '24 News Live TV| Malayalam News Live|',
                      subtitle: 'News',
                      chanelname: '24 News',
                      views: '6.8',
                      durations: '16:07',
                      month: '2',
                      KorM: 'K',
                    ),
                    //7
                     Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/an_webp/RJB-KCDfPTI/mqdefault_6s.webp?du=3000&sqp=CN7Bv5oG&rs=AOn4CLB5nXMi7TkUha3JTiWyIEjJ8FdGcw',
                      iconprofilepath:
                          'https://yt3.ggpht.com/ytc/AMLnZu9o8nLVZLzoF_hF124_HcgE6rWbkL6LG2GO50PRug=s176-c-k-c0x00ffffff-no-rj-mo',
                      maintitle: 'Zebella Guzman Story| Aswin madappally|',
                      subtitle: 'Vlog',
                      chanelname: 'AsMadappally',
                      views: '779',
                      durations: '18:22',
                      month: '6',
                      KorM: 'K',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Home_tab2 extends StatelessWidget {
  const Home_tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            children: [
              ///
              SizedBox(
                height: screensize.width * 0.04,
              ),
              //itemcontainers
              Expanded(
                child: ListView(
                  children: [
                    //1
                    const Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/Bm48lOWNpBI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBG07htEjudcUvmTxoyHQpOIsrLYQ',
                      iconprofilepath:
                          'https://yt3.ggpht.com/vi9ISqnoFfpa1J7WQMxxs2YKkhCh2mLy4DMRh9wqOre1VZ4DdLGGBDxMjUtHzCNqRySnZ0LqjOM=s68-c-k-c0x00ffffff-no-rj',
                      maintitle: 'Olemelody Songs|Thallumala Video Song|',
                      subtitle: 'Malayalam News',
                      chanelname: 'Music24*7',
                      views: '12',
                      durations: '04:36',
                      month: '08',
                      KorM: 'M',
                    ),
                    //2
                    const Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/JCwe0TRb4Sg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCuNc4-G43R-UO87Fl95wavzbrhsw',
                      iconprofilepath:
                          'https://yt3.ggpht.com/Ybu5mW939QWZsOAxzsf1sOqHIFKf8QwY00Rt50hBLxJBjP5INAeD2zSnUMHn1uE6vf_rGwf2Wg=s68-c-k-c0x00ffffff-no-rj',
                      maintitle: '1000 BUble Gum Gaint | Bubble Making ',
                      subtitle: 'Vlog',
                      chanelname: 'M4 Tech',
                      views: '08',
                      durations: '36:28',
                      month: '11',
                      KorM: 'M',
                    ),
                    //3
                    const Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/6LD30ChPsSs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDO-GZK3YdHEcZGArxX2oJKosvBMA',
                      iconprofilepath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBW5CThfWg_RNQjZ3OSAO2sLBYtWJFKm2pUw&usqp=CAU',
                      maintitle: '96 Songs|The Life of Ram Video Song|',
                      subtitle: 'Tamil Thirai',
                      chanelname: 'Think music',
                      views: '106',
                      durations: '04:30',
                      month: '11',
                      KorM: 'M',
                    ),
                    //4
                    const Home_item_container(
                      mainimagepath:
                          'https://i.ytimg.com/vi/xLtfisGoMeg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAf8Ey-qr0SqqGVhZRGAzD72eK-kQ',
                      iconprofilepath:
                          'https://yt3.ggpht.com/ytc/AMLnZu9XGUotiX-6NfTEUKwRbgMdi-9nSwgogsReo8FR0g=s68-c-k-c0x00ffffff-no-rj',
                      maintitle: 'Sandhanam Theme Video | Vikram |',
                      subtitle: 'Music',
                      chanelname: 'Sony music',
                      views: '106',
                      durations: '04:30',
                      month: '06',
                      KorM: 'M',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
