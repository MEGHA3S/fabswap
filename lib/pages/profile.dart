import 'package:fabswap/controllers/launch_dot.dart';
import 'package:fabswap/pages/profile_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: const BoxDecoration(color: Colors.white60),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/feed');
                          },
                          child: const Icon(Icons.arrow_back_ios))),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "username",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: InkWell(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/cart');
                        },
                        child: const Icon(Icons.add_shopping_cart_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                        onTap: () {
                        launchDot(context);
                        }, child: const Icon(Icons.more_horiz)),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: AssetImage("assets/images/girl.png"),
                          // height: 60,
                          width: 80,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        listing("96", "Listing"),
                        listing("60k", "Followers"),
                        listing("250", "Following")
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Profilename",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: const [
                            Text(
                              "Delhi",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: const [
                            Text(
                              "Not all those who wander are lost.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            listBox(context),
            listBox(context),
          ],
        ),
      ),
    ));
  }
}

Widget listing(String text, String text1) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 30),
    child: Column(
      children: [
        Text(text,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        Text(text1,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15))
      ],
    ),
  );
}

Widget listBox(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: Row(
      children: [
        Container(
          height: 250,
          width: 180,
          decoration: const BoxDecoration(color: Colors.grey),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/feedlist");
                },
                child: const Image(
                  image: AssetImage("assets/images/cartdress.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "H&M white dress",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "₹ 1,000",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(CupertinoIcons.heart),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.add_shopping_cart_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.share),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 250,
            width: 180,
            decoration: const BoxDecoration(color: Colors.grey),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/feedlist");
                  },
                  child: const Image(
                    image: AssetImage("assets/images/cartdress.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "H&M white dress",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "₹ 1,000",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(CupertinoIcons.heart),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(Icons.add_shopping_cart_outlined),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(Icons.share),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}



