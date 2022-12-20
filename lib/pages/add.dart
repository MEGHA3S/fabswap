import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

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
                              Navigator.pop(context, '/feed');
                            },
                            child: const Icon(Icons.arrow_back_ios)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Listing Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: InkWell(
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const Text(
                        "Photo of Product",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 100,
                          width: 200,
                          child: Image.asset("assets/images/feeddress.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.white12),
                        child: Column(
                          children: [
                            box('Category'),
                            box('Size'),
                            box('Selling Price'),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

Widget box(String label) {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: TextField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.02, color: Colors.grey),
            // filled: true,
            // fillColor: Colors.white,
          ),
          labelText: label,
          labelStyle: const TextStyle(
              //for changing label text color
              color: Colors.black,
              fontSize: 20)),
    ),
  );
}
