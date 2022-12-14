import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class Home_item_container extends StatelessWidget {
  final String mainimagepath;
  final String iconprofilepath;
  final String maintitle;
  final String subtitle;
  final String chanelname;
  final String views;
  final String month;
  final String durations;
  final String KorM;
  const Home_item_container(
      {Key? key,
      required this.mainimagepath,
      required this.iconprofilepath,
      required this.maintitle,
      required this.subtitle,
      required this.chanelname,
      required this.views,
      required this.durations,
      required this.KorM,
      required this.month})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: screensize.width * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage(mainimagepath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: screensize.width * 0.42,
              left: screensize.width * 0.83,
              child: Container(
                width: screensize.width * 0.1,
                height: screensize.width * 0.052,
                decoration: const BoxDecoration(color: constblack),
                child: Text(
                  durations,
                  style:
                      const TextStyle(color: constwhite, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screensize.width * 0.02,
        ),
        Container(
          height: screensize.width * 0.23,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: screensize.width * 0.08),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(iconprofilepath),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.06,
                ),
                SizedBox(
                  height: screensize.width * 0.03,
                ),
                Column(
                  children: [
                    Container(
                      width: screensize.width * 0.68,
                      decoration: const BoxDecoration(color: Colors.transparent),
                      child: Text(
                        maintitle,
                        style: const TextStyle(
                            color: constblack, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: screensize.width * 0.02,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          color: constblack, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screensize.width * 0.02,
                    ),
                    Container(
                      width: screensize.width * 0.68,
                      decoration: const BoxDecoration(color: Colors.transparent),
                      child: Text(
                        '${chanelname} . ${views}${KorM} views . ${month}days ago',
                        style: const TextStyle(
                            color: constblack, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // )
                SizedBox(
                  width: screensize.width * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: screensize.width * 0.1),
                  child: Container(
                    width: screensize.width * 0.04,
                    height: screensize.width * 0.09,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: const Icon(
                      Icons.more_vert,
                      color: constblack,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
