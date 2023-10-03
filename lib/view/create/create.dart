import 'package:flutter/material.dart';

class create extends StatelessWidget {
  const create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
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
                          size: 30,
                        ),
                        title: Text("Create a Shorts",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20)),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.upload,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text("upload a video",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20)),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.sensors,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text("Go live",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Create")),
    ));
  }
}
