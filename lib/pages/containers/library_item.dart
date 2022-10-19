import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class Library_container extends StatelessWidget {
  final String imagepath;
  final String title;
  final String chanaelname;
  const Library_container(
      {Key? key,
      required this.imagepath,
      required this.title,
      required this.chanaelname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: screensize.width * 0.4,
            height: screensize.width * 0.22,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(imagepath), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screensize.width * 0.015,
          ),
          Container(
            width: screensize.width * 0.4,
            height: screensize.width * 0.15,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: constblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: screensize.width * 0.007,
                    ),
                    Text(
                      chanaelname,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
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
        ],
      ),
    );
  }
}
