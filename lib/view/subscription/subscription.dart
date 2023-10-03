import 'package:flutter/material.dart';
import 'package:youtube/utils/database/database.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';

class subscription extends StatelessWidget {
  const subscription({
    super.key,
    // required this.index,
  });

  // final int index;
  @override
  Widget build(BuildContext context) {
    final List<String> mychip = [
      "All",
      "Today",
      "Live",
      "Unwatched",
      "Posts",
      "Asus",
      "samsung",
      "Bmw",
      "mobiles",
      "games",
      "movies",
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
          Icon(Icons.cast),
          SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Center(
                child: Icon(Icons.notifications_outlined),
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
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: subscri.subscribd.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(subscri.subscribd[index]["image"]),
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subscri.subscribd[index]["name"],
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                            child: Text(mychip[index],
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    )),
          ),
          // videoscreen()
          Expanded(
            child: ListView.builder(
              itemCount: subscri.myvideo.length,
              itemBuilder: (context, index) => Column(children: [
                Container(
                  height: 250,
                  child: Image.network(subscri.myvideo[index]),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(subscri.myvideo[index])),
                  title: Text(
                    "my youtube video",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "hp laptop review  14.8k    10 hours ago",
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
