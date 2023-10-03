import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoscreen extends StatefulWidget {
  videoscreen({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<videoscreen> createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {
  List<String> videoLinks = ["4I8XK_eJFKs", "L0vdykuBPOk", "TukUMmQCGt4"];

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoLinks[widget.index],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.9eS4MTEnRP_eR7nDP8_TfwHaFj?w=281&h=211&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          "Google India",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Ad",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 70, 148, 243),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "pay now",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, top: 10),
                  child: Text(
                    "Gold play Button    ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 185),
                  child: Text(
                    " 20k views  12 hr ago ...more ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/e7/a1/e8/e7a1e8d7802591845d3d978a743561b5.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Text("Technical Guruji    ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("23.5 Million",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 31, 31, 31),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 14,
                            ),
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1.8k",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.thumb_down_alt_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 31, 31, 31),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 11,
                            ),
                            Icon(
                              Icons.screen_share_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Share",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 31, 31, 31),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.show_chart_sharp,
                              color: Colors.white,
                              size: 23,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              "Remix",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 31, 31, 31),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.download_for_offline_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Download",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 31, 31, 31),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.playlist_add_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Save",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 21, 21, 21),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "Comments  122",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 50,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.amber,
                            child: Text(
                              "A",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "superrrrrrrrrrrrrrrrr",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Image.network(
                      "https://th.bing.com/th/id/OIP.Kq0Jx87q5HLEzjQKYHmbyAHaLH?w=196&h=294&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                      fit: BoxFit.fill),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
