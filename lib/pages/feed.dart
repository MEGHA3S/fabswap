import 'package:fabswap/pages/navigation.dart';
import 'package:fabswap/variables/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controllers/launch_popup.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: const BoxDecoration(color: Colors.white60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {
                                      launchDrawer(context);
                                    },
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 3),
                                          child: Icon(
                                            Icons.menu,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            "All",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 220, 212, 195),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.youtube_searched_for,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.person_search_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  for (int z = 0; z < feedModel.response!.length; z++)
                    feedData(
                        context,
                        feedModel.response![z].username.toString(),
                        feedModel.response![z].dressName.toString(),
                        feedModel.response![z].dressSize.toString(),
                        feedModel.response![z].dressPrice.toString(),
                        feedModel.response![z].likes.toString(),
                        feedModel.response![z].comments.toString(),
                        feedModel.response![z].image.toString(),
                        feedModel.response![z].createdAt.toString(),


                    ),

                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const Navi(),
    ));
  }
}

Widget lowerLike(String text, IconData icon) {
  return Padding(
      padding: const EdgeInsets.only(top: 10, left: 40),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ));
}

Widget feedData(context, String username, String dressName, String dressSize,
    String dressPrice, String likes, String comments,String image,String time) {
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
              child:  Text(
                username,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "shared their listing from their",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 67),
        child: Row(
          children: const [
            Text(
              "boutique",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 67, top: 5),
        child: Row(
          children: [
            Text(
              time,
              style:const  TextStyle(
                color: Colors.grey,
                fontSize: 12,
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
                    Navigator.popAndPushNamed(context, '/feedlist');
                  },
                  child:  Image(
                      image: NetworkImage(image),
                  height: 200,
                  width: 200,)),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60, top: 20),
        child: Row(
          children: [
            Text(
              dressName,
              style: const TextStyle(
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
          children: [
            Text(
              "₹ $dressPrice ",
              style:const  TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
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
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                " Size : $dressSize ",
                style: const TextStyle(
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
            children:  [
              Text(
                "$likes Likes",
                style:const  TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  " $comments Comments",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )),
      const Divider(
        color: Colors.black12,
      ),
      Row(
        children: [
          lowerLike("Like", CupertinoIcons.heart),
          lowerLike("Comment", Icons.add_comment_outlined),
          lowerLike("Share", Icons.share),
        ],
      ),
    const  Padding(
       padding:  EdgeInsets.only(top: 10),
       child: Divider(
          color: Colors.black12,
        ),
     ),



    ],
  );
}
