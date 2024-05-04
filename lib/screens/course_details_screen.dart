import 'package:classical_education/screens/courses_screen.dart';
import 'package:classical_education/utils/string_extensions.dart';
import 'package:classical_education/widgets/playlist_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {"title": "introduction", "time": "2 Min 43 Sec", "isOpen": true},
    {"title": "how to start design", "time": "2 Min 43 Sec", "isOpen": false},
    {"title": "what is UI/UX design", "time": "2 Min 43 Sec", "isOpen": false},
    {"title": "user experience design", "time": "2 Min 43 Sec", "isOpen": false}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoursesScreen(),
              ),
            );
          },
          style: IconButton.styleFrom(
            side: BorderSide(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          icon: Text(
            String.fromCharCode(Icons.arrow_back.codePoint),
            style: TextStyle(
              inherit: false,
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontFamily: Icons.arrow_back.fontFamily,
            ),
          ),
        ),
        title: Text(
          "Course details".capitalize(),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red.shade400,
                size: 20,
              ),
              style: IconButton.styleFrom(
                  side: BorderSide(
                color: Colors.grey.shade400,
                width: 2,
              )),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/backgroundcourse.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 170, 20, 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.shuffle,
                                color: Colors.white,
                                size: 25,
                              ),
                              const Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 30,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_arrow_rounded,
                                  size: 40,
                                  color: Color.fromARGB(255, 255, 95, 50),
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 30,
                              ),
                              const Icon(
                                Icons.zoom_out_map,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Divider(
                              thickness: 4,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 245, 245),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 175,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 115, 115, 235),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Playlist (27)",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Descriptions",
                        style: TextStyle(
                          color: Color.fromARGB(255, 17, 12, 35),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              for (var item in data)
                PlayListItem(
                  title: item['title'],
                  time: item['time'],
                  isOpen: item['isOpen'],
                ),
              // ListTile(
              //   leading: IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.play_arrow_rounded,
              //       size: 40,
              //       color: Colors.white,
              //     ),
              //     style: IconButton.styleFrom(
              //       backgroundColor: Color.fromARGB(255, 255, 240, 235),
              //     ),
              //   ),
              //   title: Text("intro"),
              //   subtitle: Text("1min"),
              //   trailing: IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.lock_open_rounded,
              //       color: Colors.white,
              //     ),
              //     style: IconButton.styleFrom(
              //       backgroundColor: const Color.fromARGB(255, 115, 115, 235),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 95, 50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "purchase only-\$28".capitalize(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
