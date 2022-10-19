import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtubeui/pages/constants.dart';
import 'package:youtubeui/pages/containers/circular_container.dart';

import '../containers/home_itemcontainer.dart';

class Subscription_tab extends StatelessWidget {
  const Subscription_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
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
              Container(
                height: screensize.width * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    Container(
                      height: screensize.width * 0.2,
                      width: screensize.width * 0.8,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screensize.width * 0.02,
                          ),
                          //first item container
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Cirular_container(
                                    imagepath:
                                        'https://yt3.ggpht.com/103caAxR8dUgicN3Fy1p2X_8txHZX0yz5kcqDAgLYbQnlpbU0884qg7bVLbKYN3Kjne9MJTYxA=s900-c-k-c0x00ffffff-no-rj',
                                    title: 'anandhu'),
                                Cirular_container(
                                    imagepath:
                                        'https://i.pinimg.com/originals/41/6c/fa/416cfafa95c3c7bbb7c572ed5da859ce.jpg',
                                    title: 'Dq'),
                                Cirular_container(
                                    imagepath:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvbSkAE54C49PS45ZolicsSrwdJNCJTyFQZ6WqcGY9q33Avy9dGNmCexW3AmsvYsOhqOY&usqp=CAU',
                                    title: 'Asianet'),
                                Cirular_container(
                                    imagepath:
                                        'https://upload.wikimedia.org/wikipedia/en/9/94/Mathrubhumi_News_Logo.jpg',
                                    title: 'Mathrubhumi'),
                                Cirular_container(
                                    imagepath:
                                        'https://www.twentyfournews.com/wp-content/uploads/2019/11/24-logo-HD.jpg',
                                    title: '24 News'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: screensize.width * 0.2,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Center(
                          child: Text(
                            'ALL',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  //1
                  Home_item_container(
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
                  Home_item_container(
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
                  //4
                  Home_item_container(
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
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
