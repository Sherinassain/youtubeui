import 'package:flutter/material.dart';
import 'package:youtubeui/pages/constants.dart';

class Shorts_tab extends StatelessWidget {
  Shorts_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children:const [
          Shorts_container(
              imagepath:
                  'https://i.ytimg.com/vi/df-jqz-J-nE/hq720_2.jpg?sqp=-oaymwEdCJgDENAFSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLA-hI_Zt_4hcj2jEFIht1x4KfI09A'),
          Shorts_container(
              imagepath:
                  'https://i.ytimg.com/vi/HZrU4i3nwWo/hq720_2.jpg?sqp=-oaymwEdCJUDENAFSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLD2DTPg_24C1GfRzWHC0wC2SuwbRQ'),
          Shorts_container(
              imagepath:
                  'https://i.ytimg.com/vi/Emq8J9UQCRo/hq720_2.jpg?sqp=-oaymwEdCJUDENAFSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLBxQTjN9WCSO6hAVh6dntlih49hCw'),
          Shorts_container(
              imagepath:
                  'https://i.ytimg.com/vi/kLBlkSJ-JrA/hq720_2.jpg?sqp=-oaymwEdCJUDENAFSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLBtXYn98FT4kDtIHXrkB44YvOWcJA'),
        ],
      )),
    );
  }
}

class Video_widgets extends StatelessWidget {
  Video_widgets({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: constwhite,
          ),
          Text(
            title,
            style: const TextStyle(color: constwhite, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class Shorts_container extends StatelessWidget {
  final String imagepath;
  const Shorts_container({Key? key, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: NetworkImage(imagepath), fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 30,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            color: constwhite,
                            size: 30,
                          ))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //video Widgets

                      Video_widgets(icon: Icons.more_horiz, title: ''),
                      Video_widgets(icon: Icons.thumb_up, title: 'Like'),
                      Video_widgets(icon: Icons.thumb_down, title: 'Dislike'),
                      Video_widgets(icon: Icons.comment, title: 'Comment'),
                      Video_widgets(icon: Icons.share, title: 'Share'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
