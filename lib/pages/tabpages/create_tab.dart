import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtubeui/pages/tabpages/home_tab.dart';
import 'package:youtubeui/pages/tabpages/shorts_tab.dart';

import '../constants.dart';

class Create_tab extends StatelessWidget {
  const Create_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 4),
          height: screensize.height * 0.4,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    color: Colors.grey,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: screensize.width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Create',
                      style: TextStyle(
                          color: constblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ))
                  ],
                ),
                SizedBox(
                  height: screensize.width * 0.1,
                ),
                Row(
                  children: [
                    const ImageIcon(
                      const AssetImage('assets/shorts.png'),
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: screensize.width * 0.12,
                    ),
                    const Text(
                      'Create a Shorts',
                      style:  TextStyle(
                          color: constblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                //2
                SizedBox(
                  height: screensize.width * 0.1,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.upload,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: screensize.width * 0.12,
                    ),
                    const Text(
                      'Upload a video',
                      style:  TextStyle(
                          color: constblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                //3
                SizedBox(
                  height: screensize.width * 0.1,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.wifi,
                      color: constblack,
                    ),
                    SizedBox(
                      width: screensize.width * 0.12,
                    ),
                    const Text(
                      'Go live',
                      style:  TextStyle(
                          color: constblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
