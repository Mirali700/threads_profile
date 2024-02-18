import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              SizedBox(
                height: 36.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18.0,
                        ),
                      ),
                    ),
                    const Text('Back'),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.photo_camera_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.add_alert_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.more_horiz_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75.0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Threads',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              const Text('threadsapp'),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                      width: 0.0,
                                      color: Color.fromARGB(255, 229, 229, 229),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                        255, 229, 229, 229),
                                    minimumSize: Size.zero,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'threads.net',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.grey),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 42.0,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/300'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.0),
                      child: Text(
                        'Powered by Instagram. Say more  ✨',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/200'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/300'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/400'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        '337K followers · about.instagram.com/aaaaaaa',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(35.0),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 205, 204, 204)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Following',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
