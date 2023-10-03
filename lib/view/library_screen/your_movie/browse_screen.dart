import 'package:flutter/material.dart';
import 'package:youtube/utils/database/database.dart';

class browse_screen extends StatelessWidget {
  const browse_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150, top: 20),
                child: Text(
                  "Primetime movies for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: browsemovie.prime.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(
                                browsemovie.prime[index]["image"],
                                fit: BoxFit.cover,
                              ),
                              height: 191,
                              width: 130,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              browsemovie.prime[index]["name"],
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 10),
                child: Text(
                  "Top selling",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: browsemovie.top.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 191,
                              width: 130,
                              color: Colors.white,
                              child: Image.network(
                                browsemovie.top[index]["image"],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              browsemovie.top[index]["name"],
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 20),
                child: Text(
                  "New to rent",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: browsemovie.prime.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(
                                  browsemovie.prime[index]["image"],
                                  fit: BoxFit.cover),
                              height: 141,
                              width: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              browsemovie.prime[index]["name"],
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, top: 20),
                child: Text(
                  "Action and adventure",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: browsemovie.top.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(
                                  browsemovie.top[index]["image"],
                                  fit: BoxFit.cover),
                              height: 141,
                              width: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              browsemovie.top[index]["name"],
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170, top: 20),
                child: Text(
                  "Hot deals of the week",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: browsemovie.prime.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(
                                  browsemovie.prime[index]["image"],
                                  fit: BoxFit.cover),
                              height: 141,
                              width: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              browsemovie.prime[index]["name"],
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
