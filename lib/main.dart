import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          'Twitter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Container(
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/download.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 5,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                            spreadRadius: 5,
                            blurStyle: BlurStyle.outer),
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(-5, -5),
                            blurRadius: 5,
                            spreadRadius: 6,
                            blurStyle: BlurStyle.outer)
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    height: 280,
                    width: 280,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/abc.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: Colors.blueGrey,
                        width: 5,
                      ),
                      shape: BoxShape.rectangle,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(5, 5),
                            blurRadius: 5,
                            spreadRadius: 6,
                            blurStyle: BlurStyle.outer),
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(-5, -8),
                            blurRadius: 5,
                            spreadRadius: 6,
                            blurStyle: BlurStyle.outer)
                      ],
                    )),
              ],
            ),
          )),
      drawer: Drawer(),
    );
  }
}
