import 'package:flutter/material.dart';
import 'package:youtube/utils/database/database.dart';
import 'package:youtube/view/home_screen/notification.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';
import 'package:youtube/view/videoscreen/videoscreen.dart';

class home_screen extends StatelessWidget {
  const home_screen({
    super.key,
    // required this.index,
  });

  // final int index;
  @override
  Widget build(BuildContext context) {
    final List<String> mychip = [
      "laptop",
      "mobiles",
      "games",
      "movies",
      "music",
      "Asus",
      "samsung",
      "gta5",
      "review",
      "Bmw",
      "bikes",
      "music",
      "laptop",
      "mobiles",
      "games",
      "movies",
      "music"
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 35,
          width: 100,
          child: Image.asset("assets/images/nameof_youtube.png"),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Connect to a device'),
                    content: Text("No device found"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.cast),
          ),
          SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notification(),
                          ));
                    },
                    child: Icon(Icons.notifications_outlined)),
              ),
              Positioned(
                top: 6,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => search_screen(),
                  ));
            },
            child: Icon(Icons.search_outlined),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage(
                  "https://i.pinimg.com/564x/d7/02/4c/d7024c664588e0c34ea68feec42770fa.jpg"),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                  ));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mychip.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 65, 65, 64),
                          ),
                          child: Center(
                            child: Text(
                              mychip[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
          // videoscreen()
          Expanded(
            child: ListView.builder(
              itemCount: homevideo.home.length,
              itemBuilder: (context, index) => Column(children: [
                Container(
                  height: 250,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => videoscreen(
                                index: index,
                              ),
                            ));
                      },
                      child: Image.network(homevideo.home[index]["image"])),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(homevideo.home[index]["image"])),
                  title: Text(
                    homevideo.home[index]["text"],
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    homevideo.home[index]["subtext"],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
