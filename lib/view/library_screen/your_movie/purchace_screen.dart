import 'package:flutter/material.dart';

class purchace_screen extends StatelessWidget {
  const purchace_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Icon(
                  Icons.sell,
                  size: 200,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 300,
              child: ListTile(
                title: Text(
                  "You dont have any purchses",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Movies and shows that  you  rent or buy will appear here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
