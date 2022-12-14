import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

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
                    decoration: const BoxDecoration(color: Colors.white60),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: InkWell(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, '/feedlist');
                                },
                                child: const Icon(Icons.arrow_back_ios))),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "My Cart",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
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
                          onTap: () {},
                          child: const Text(
                            "username",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(children: const [
                      Text(
                        "updated 7 minutes ago",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(children: [
                      const Image(
                          image: AssetImage("assets/images/cartdress.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "White Dress",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("₹1,000",
                                  style: TextStyle(fontSize: 15)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Size : UK S",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: InkWell(
                                  onTap: () {},
                                  child: const Text("Remove",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey))),
                            )
                          ],
                        ),
                      )
                    ]),
                  )
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
                padding: const EdgeInsets.only(left: 210),
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
