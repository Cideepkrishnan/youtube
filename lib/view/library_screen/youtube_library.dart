import 'package:flutter/material.dart';
import 'package:youtube/utils/database/database.dart';
import 'package:youtube/view/library_screen/your_movie/films.dart';
import 'package:youtube/view/library_screen/your_videos/your_video.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';

class youtube_library extends StatelessWidget {
  const youtube_library({super.key});

  @override
  Widget build(BuildContext context) {
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

      // appbar

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170, top: 10),
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //subscribed imaghes
            Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: libra.history.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.network(
                            libra.history[index],
                            fit: BoxFit.cover,
                          ),
                          width: 180,
                          height: 90,
                          color: Colors.amber,
                        ),
                        Text(
                          "Qualo palano",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "OFF world",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => your_video(),
                    ));
              },
              child: ListTile(
                leading: Icon(
                  Icons.slideshow_sharp,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text("Your videos",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.download,
                size: 25,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.check_circle_rounded,
                color: Colors.white,
              ),
              title: Text("Downloads",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              subtitle: Text("5 Videos",
                  style: TextStyle(
                      color: Color.fromARGB(255, 124, 121, 121), fontSize: 13)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => filims(),
                    ));
              },
              child: ListTile(
                leading: Icon(
                  Icons.local_movies_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => filims(),
                        ));
                  },
                  child: Text(
                    "Your movies",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Playlists",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    "A-Z",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "New playlist",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Watch Later",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "1,985 unwatched videos",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 115, 114, 114)),
                    )
                  ],
                )
              ])
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.amber,
                    child: Image.network(
                      "https://i.pinimg.com/564x/d3/ba/1e/d3ba1e4aedaae2c6177dcdd7e836acda.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Malayalam tutorial",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "@ak world •35 videos",
                      style: TextStyle(
                          color: Color.fromARGB(255, 110, 107, 107),
                          fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.amber,
                    child: Image.network(
                      "https://i.pinimg.com/564x/d2/55/ac/d255ac78bb40edc96076bb4c22a32504.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "GTA5 malayalam",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "@ENXGMA •12 videos",
                      style: TextStyle(
                          color: Color.fromARGB(255, 110, 107, 107),
                          fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
