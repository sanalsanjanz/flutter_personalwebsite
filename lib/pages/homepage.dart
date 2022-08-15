import 'package:flutter/material.dart';
import 'package:website/responsive/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selHome = true;
  bool selBlog = false;
  bool selServ = false;
  bool selGal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Container(
          color: Colors.green,
        ),
        tablet: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(physics: const BouncingScrollPhysics(), children: [
            SizedBox(
              height: Responsive.isTablet(context) ? 150 : 80,
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
                      bottom: 40,
                      left: 160,
                      child: Text(
                        "SANAL PK",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
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
                            fontSize: selHome ? 14 : 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 250,
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
                            fontSize: selBlog ? 14 : 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 150,
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
                            fontSize: selServ ? 14 : 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 50,
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
                            fontSize: selGal ? 14 : 12,
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
              height: 25,
            ),
            selBlog
                ? Container()
                : selServ
                    ? Container()
                    : selGal
                        ? Container()
                        : Stack(
                            children: [
                              /*  const Positioned(
                                child: Image(
                                  image: AssetImage('assets/pagebg.png'),
                                ),
                              ), */

                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 150,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/Android.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 150,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 60,
                                                image: AssetImage(
                                                    "assets/Apple.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 150,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 60,
                                                image: AssetImage(
                                                    "assets/windows.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 150,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 60,
                                                image: AssetImage(
                                                    "assets/website.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "What is an Android Application  ?",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 30,
              height: 5,
              child: Divider(),
            ),
            const Text(
                "Android App is a software designed to run on an Android device or emulator. The term also refers to an APK file which stands for Android package. This file is a Zip archive containing app code, resources, and meta information. Android apps can be written in Kotlin, Java, and C++ and are run inside Virtual Machine."),
            const SizedBox(
              height: 5,
            ),
            const Text(
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
            )
          ]),
        ),
        desktop: Container(
          padding: const EdgeInsets.all(30),
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
              height: 25,
            ),
            selBlog
                ? Container()
                : selServ
                    ? Container()
                    : selGal
                        ? Container()
                        : Stack(
                            children: [
                              /*  const Positioned(
                                child: Image(
                                  image: AssetImage('assets/pagebg.png'),
                                ),
                              ), */

                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/Android.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 150,
                                                image: AssetImage(
                                                    "assets/Apple.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 150,
                                                image: AssetImage(
                                                    "assets/windows.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: Card(
                                        color: Colors.deepPurple,
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                              bottom: 0, right: 0,
                                              left:
                                                  0, //alignment: Alignment.center,
                                              child: Image(
                                                width: 200,
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('assets/bg.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Image(
                                                height: 150,
                                                image: AssetImage(
                                                    "assets/website.png"),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "What is an Android Application  ?",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 30,
              height: 5,
              child: Divider(),
            ),
            const Text(
                "Android App is a software designed to run on an Android device or emulator. The term also refers to an APK file which stands for Android package. This file is a Zip archive containing app code, resources, and meta information. Android apps can be written in Kotlin, Java, and C++ and are run inside Virtual Machine."),
            const SizedBox(
              height: 5,
            ),
            const Text(
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
            )
          ]),
        ),
      ),
    );
  }
}
