import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 44,
              height: 44,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 240, 235),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/memoji.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Hi, John Smith 👋",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
              ),
              icon: const Icon(
                CupertinoIcons.bell_fill,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 240, 235),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Row(
                      children: [
                        const Text(
                          "Discover How\nTo Be Creative",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 95, 50),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          "assets/images/rocket.png",
                          width: 70,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instructor",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 95, 50),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 190, 70),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/person1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 125, 217, 225),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/person2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 170, 130),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/person3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 199, 235),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/person4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Design",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Programming",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Gaming",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 36,
                      decoration: BoxDecoration(
                        border: const Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 255, 95, 50),
                            width: 3,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey.shade200,
                            width: 3,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/coding.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.square_list_fill,
                              color: Color.fromARGB(255, 114, 112, 235),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "24 Lessons",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              CupertinoIcons.play_circle_fill,
                              color: Color.fromARGB(255, 255, 95, 50),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2Hr 30Min",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Learn Web Development",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20, //!
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/painting.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.square_list_fill,
                              color: Color.fromARGB(255, 114, 112, 235),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "24 Lessons",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              CupertinoIcons.play_circle_fill,
                              color: Color.fromARGB(255, 255, 95, 50),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2Hr 30Min",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Learn Pro UI/UX Design",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_filled,
                color: Color.fromARGB(255, 115, 115, 235),
                size: 30,
              ),
              Icon(
                Icons.bookmark,
                color: Colors.grey,
                size: 30,
              ),
              Icon(
                Icons.settings,
                color: Colors.grey,
                size: 30,
              ),
              Icon(
                Icons.person,
                color: Colors.grey,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
