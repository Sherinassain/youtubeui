import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtubeui/pages/constants.dart';

class Cirular_container extends StatelessWidget {
  final String imagepath;
  final String title;
  const Cirular_container(
      {Key? key, required this.imagepath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(imagepath),
          ),
          SizedBox(
            height: screensize.width * 0.01,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: constblack, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
