import 'package:classical_education/screens/courses_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  double counter = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animationController.addListener(() {
      setState(() {
        counter = animationController.value;
      });
    });
  }

  void start() async {
    await animationController.forward();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoursesScreen(),
      ),
    );
  }

  // void increment() {
  //   if (counter == 7) {
  //     counter = 0;
  //   } else {
  //     counter++;
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 240, 235, 1),
                    Color.fromRGBO(242, 179, 162, 1)
                  ],
                ),
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage("assets/images/girl.png"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(190),
                  bottomRight: Radius.circular(190),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "A Classical Education\nfor the Future",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 96,
                height: 96,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(255, 210, 200, 1),
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              CustomPaint(
                size: const Size(95, 95),
                painter: Roller(counter),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(60),
                onTap: start,
                child: Container(
                  width: 70,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 95, 50),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "START",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Roller extends CustomPainter {
  final double counter;
  Roller(this.counter);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 4;
    paint.color = const Color.fromARGB(255, 255, 95, 50);
    paint.style = PaintingStyle.stroke;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final path = Path();
    path.addArc(
      Rect.fromCircle(
        center: center,
        radius: size.width / 2,
      ),
      0,
      counter * 7,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
