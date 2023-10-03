import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: CircleAvatar(
                      radius: 30,
                      foregroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/d7/02/4c/d7024c664588e0c34ea68feec42770fa.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Cideep krishnan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "manage your google account",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //icons
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Your Channel",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.account_box,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Turn on Incognito",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.person_add_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Add Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //devider
              Divider(
                color: Colors.white,
                thickness: .9,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.workspace_premium_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Get Youtube Premium",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Purchases and memberships",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.insert_chart_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Time Watched",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shield_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Your data in Youtube",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: .9,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.help_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Help and feedback",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: .9,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.live_tv_outlined,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Youtube Studio",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.play_circle_outline,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Youtube Music",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Youtube Kids",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
