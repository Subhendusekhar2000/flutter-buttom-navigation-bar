import 'package:flutter/material.dart';
import 'layouts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 130, 2, 2)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;
  final layouts = [
    const Home_screen(),
    const Business_screen(),
    const School_screen()
  ];
  List<String> layouttitle = ["Home page", "Bussiness page", "School page"];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by

        title: Text(
          layouttitle[currentindex],
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        fixedColor: Color.fromARGB(255, 143, 147, 10),
        currentIndex: currentindex,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        onTap: (value) {
          currentindex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 129, 2, 74),
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 129, 2, 74),
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 129, 2, 74),
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
