import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedListing extends StatelessWidget {
  const FeedListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: const BoxDecoration(color: Colors.white),
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
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Listing Details",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: InkWell(
                              onTap: () {
                                Navigator.popAndPushNamed(context, '/cart');
                              },
                              child:
                                  const Icon(Icons.add_shopping_cart_outlined)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: InkWell(
                              onTap: () {}, child: const Icon(Icons.share)),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  lowerData(context),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "₹1,000",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/cart');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top:7),
                          child: Column(
                            children: const [
                              Text(
                                "Add to",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/buy");
                      },
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget lowerData(context) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const Image(
                image: AssetImage("assets/images/face.png"),
                width: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, '/profile');
              },
              child: const Text(
                "username",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, top: 10),
            child: Icon(CupertinoIcons.heart),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 10),
            child: Icon(Icons.add_comment_outlined),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Row(
          children: const [
            Text(
              "38 seconds ago",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 120, top: 10),
              child: Text(
                "70",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, top: 10),
              child: Text(
                "6",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/picture');
                  },
                  child: const Image(
                      image: AssetImage("assets/images/feeddress.png"))),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60, top: 20),
        child: Row(
          children: const [
            Text(
              "H&M White Dress",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60, top: 20),
        child: Row(
          children: const [
            Text(
              "₹1,000",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                " | ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                " Size : Xs ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 60),
        child: Row(
          children: const [
            Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      lowerCategory("Category"),
      lowerSize("Size"),
      lowerColor("Colour")
    ],
  );
}

Widget lowerCategory(String text) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 60),
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 30),
        child: Row(
          children: [
            lowerContainer("Women"),
            lowerContainer("Dress"),
            lowerContainer("White")
          ],
        ),
      )
    ],
  );
}

Widget lowerContainer(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 227, 191, 95),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Center(
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget lowerSize(String text) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 60),
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 30),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 227, 191, 95),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Center(
                  child: Text(
                    "UK 30 ",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget lowerColor(String text) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 60),
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 30),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 227, 191, 95),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Center(
                  child: Text(
                    "White",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}
