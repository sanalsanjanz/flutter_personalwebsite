import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:website/responsive/responsive.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool selHome = true;
  bool selBlog = false;
  bool selServ = false;
  bool selGal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          SizedBox(
            height: Responsive.isDesktop(context) ? 150 : 80,
            // color: Colors.grey,
            child: Card(
              child: Stack(
                children: [
                  const Positioned(
                    left: 10,
                    //top: 10,
                    // alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 35,
                    left: 160,
                    child: Text(
                      "SANAL PK",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 450,
                    bottom: 10,
                    // alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selHome = true;
                          selBlog = false;
                          selGal = false;
                          selServ = false;
                        });
                      },
                      child: Text(
                        "HOME",
                        style: TextStyle(
                          color: selHome ? Colors.black : Colors.blueGrey,
                          fontSize: selHome ? 20 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 350,
                    bottom: 10,
                    // alignment: Alignment.centerLeft,

                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selBlog = true;
                          selGal = false;
                          selServ = false;
                          selHome = false;
                        });
                      },
                      child: Text(
                        "BLOG",
                        style: TextStyle(
                          color: selBlog ? Colors.black : Colors.blueGrey,
                          fontSize: selBlog ? 20 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 210,
                    bottom: 10,
                    // alignment: Alignment.centerLeft,

                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selServ = true;
                          selBlog = false;
                          selGal = false;
                          selHome = false;
                        });
                      },
                      child: Text(
                        "SERVICES",
                        style: TextStyle(
                          color: selServ ? Colors.black : Colors.blueGrey,
                          fontSize: selServ ? 20 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 90,
                    bottom: 10,
                    // alignment: Alignment.centerLeft,

                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selGal = true;
                          selBlog = false;

                          selServ = false;
                          selHome = false;
                        });
                      },
                      child: Text(
                        "GALLERY",
                        style: TextStyle(
                          color: selGal ? Colors.black : Colors.blueGrey,
                          fontSize: selGal ? 20 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info,
                        color: Colors.black,
                      ),
                      label: const SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          selBlog
              ? Container()
              : selServ
                  ? Container()
                  : selGal
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.white,
                              width: double.maxFinite,
                              height: 360,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: Image(
                                      height: 360,
                                      image: AssetImage('assets/pk.png'),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        ColorizeAnimatedText(
                                            speed: const Duration(
                                                milliseconds: 180),
                                            '''" People don't care about what you say ,
                    They care about what you build "''',
                                            textStyle: const TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600),
                                            colors: [
                                              Colors.deepPurple,
                                              const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              const Color.fromARGB(
                                                  255, 255, 0, 0)
                                            ]),
                                        ColorizeAnimatedText(
                                            speed: const Duration(
                                                milliseconds: 160),
                                            "LET'S BUILD IT TOGETHER !",
                                            textStyle: const TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600),
                                            colors: [
                                              const Color.fromARGB(
                                                  255, 99, 9, 255),
                                              const Color.fromARGB(
                                                  255, 61, 50, 50),
                                              const Color.fromARGB(
                                                  255, 255, 0, 0)
                                            ])
                                      ],
                                      isRepeatingAnimation: true,
                                    ), /*  Text('''" People don't care about what you say ,
                    "they care about what you build'''), */
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      HomeTabs(
                                        path: 'assets/Android.png',
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      HomeTabs(
                                        path: 'assets/Apple.png',
                                        height: 130,
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      HomeTabs(
                                        path: "assets/windows.png",
                                        height: 130,
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      HomeTabs(
                                        path: "assets/website.png",
                                        height: 130,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Why Me ?",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 30,
                              height: 5,
                              child: Divider(),
                            ),
                            const Text(
                              "Imagine you have build an Android app for your client, and it’s growing day by day. Your client  pressure for launching the iOS version the application. Sometimes they are also asking for a lite web version of the app. Time is pressing, but you don’t have a budget to hire a developer, neither the time to learn a completely new language, much less make a production-ready launch.This is where flutter app developers comes into the picture. Flutter developer can helps you to build an app for different platforms from the same codebase. The code used to publish the Android app can be deployed on iOS, the web, or a desktop program with little change. This completely eliminates the need to maintain a different codebase as well. Isn’t that really great ?",
                              style: TextStyle(fontSize: 25),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            /*  const Text(
                                "I can build quality android application for you. Which can contain"),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\u2022"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Superb UI"),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\u2022"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Animations"),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\u2022"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Firebase"),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\u2022"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Google Map"),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\u2022"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Notification"),
                              ],
                            ) */

                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 150,
                              width: double.maxFinite,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AnimatedTextKit(animatedTexts: [
                                    WavyAnimatedText(
                                      "Contact me",
                                      textStyle: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ]),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "sanalpk220@gmail.com",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "+91 860 6044 696",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Melattur Kerala",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: const Center(
                                child: Text("SANAL PK  © 2022"),
                              ),
                            )
                          ],
                        ),
        ]),
      ),
    );
  }
}

class HomeTabs extends StatelessWidget {
  HomeTabs({required this.path, this.height});
  String path;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: Responsive.isDesktop(context)
            ? 250
            : Responsive.isTablet(context)
                ? 180
                : Responsive.isMobile(context)
                    ? 130
                    : 0,
        child: Card(
          color: Colors.deepPurple,
          child: Stack(
            children: [
              const Positioned(
                bottom: 0, right: 0,
                left: 0, //alignment: Alignment.center,
                child: Image(
                  width: 200,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/bg.png'),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: height,
                  image: AssetImage(path),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
