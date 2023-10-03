// class video {
//   final List<String> myvideo = [
//     "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg",
//     "https://th.bing.com/th/id/OIP.GunHfMoxH69PoxPKpU_w-AHaEK?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
//     "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
//     "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
//     "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg",
//     "https://th.bing.com/th/id/OIP.GunHfMoxH69PoxPKpU_w-AHaEK?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
//     "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
//     "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
//     "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
//     "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
//     "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg"
//   ];
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class moviesbar extends StatefulWidget {
  moviesbar({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<moviesbar> createState() => _moviesbarState();
}

class _moviesbarState extends State<moviesbar> {
  List<String> videoLinks = ["L0vdykuBPOk", "qf5Hdkhh7zs", "TukUMmQCGt4"];

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoLinks[widget.index],
        flags: YoutubePlayerFlags(autoPlay: true, mute: true));

    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 195,
            color: Colors.yellowAccent,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                playedColor: Colors.red,
                handleColor: Colors.amberAccent,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text(
              "my youtube video",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "hp laptop review  14.8k    10 hours ago",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
