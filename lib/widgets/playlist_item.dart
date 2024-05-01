import 'package:classical_education/utils/string_extensions.dart';
import 'package:flutter/material.dart';

class PlayListItem extends StatelessWidget {
  String title;
  String time;
  bool isOpen;
  PlayListItem({required this.title, required this.time, required this.isOpen});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                        color: isOpen
                            ? Colors.white
                            : const Color.fromARGB(255, 255, 95, 50),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: isOpen
                            ? const Color.fromARGB(255, 255, 95, 50)
                            : const Color.fromARGB(255, 255, 240, 235),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.capitalize(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 17, 12, 35),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isOpen
                        ? Icons.lock_open_rounded
                        : Icons.lock_outline_rounded,
                    color: isOpen
                        ? Colors.white
                        : const Color.fromARGB(255, 115, 115, 235),
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: isOpen
                        ? const Color.fromARGB(255, 115, 115, 235)
                        : const Color.fromARGB(255, 235, 230, 250),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey.shade200,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
