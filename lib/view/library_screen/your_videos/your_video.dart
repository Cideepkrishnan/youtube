import 'package:flutter/material.dart';

class your_video extends StatelessWidget {
  const your_video({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> car = ["videos", "Shorts", "Live"];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Your video",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
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
                itemCount: car.length,
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
                              car[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.network(
                "https://www.pngarts.com/files/4/Dragon-Boat-Festival-PNG-Download-Image.png"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    ),
                  ),
                  builder: (context) {
                    return Container(
                      height: 250,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Create",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.explore,
                              color: Colors.white,
                              size: 23,
                            ),
                            title: Text("Create a Short",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.upload,
                              color: Colors.white,
                              size: 23,
                            ),
                            title: Text("upload a video",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.sensors,
                              color: Colors.white,
                              size: 23,
                            ),
                            title: Text("Go live",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("Create")),
        ],
      ),
    );
  }
}
