import 'package:flutter/material.dart';
import 'package:web_education/Screen/webScreen.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.blueAccent,
      title: const Text(
        "Education ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebScreen(URL: 'https://www.w3schools.com/',),
                        ),
                  );
                },
                child: Container(
                  height: 60,width: 60,
                  child: Image.asset(
                    "assert/iamge/e1.png",
                    scale: 3,
                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebScreen(URL: 'https://www.javatpoint.com/',),
                        ),
                  );
                },
                child: Container(
                  height: 70,width: 70,

                  child: Image.asset(
                    "assert/iamge/e2.png",

                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(URL: 'https://www.tutorialspoint.com/index.htm',),

                    ),
                  );
                },
                child: Container(
                  height: 70,width: 70,

                  child: Image.asset(
                    "assert/iamge/e3.png",

                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebScreen(URL: 'https://www.wikipedia.org/',),
                        ),
                  );

                },
                child: Image.asset(
                  "assert/iamge/e4.jfif",
                  scale: 3,
                )),

          ],
        ),
      ),
    );
  }
}
