import 'package:flutter/material.dart';

import 'app_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
    // return MaterialApp(home: AppBar(title: Text('Home '),),);
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
void _openEndDrawer() {
  _scaffoldKey.currentState!.openEndDrawer();
}

String text = "Stud-EGram";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_filled,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_book_rounded,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.fastfood_outlined,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                _openEndDrawer();
              },
              icon: CircleAvatar(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Tarangire-Natpark800600.jpg/800px-Tarangire-Natpark800600.jpg',
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              color: Colors.black,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.thumb_up_alt_outlined,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail_outlined,
            ),
            color: Colors.black,
          ),
        ],
      ),
      endDrawer: const AppDrawer(),
      body: Center(
        child: Card(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListTile(
                  trailing: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  title: const Text("leomessi"),
                  leading: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/1/1d/Football_Pallo_valmiina-cropped.jpg',
                      ),
                    ),
                  ),
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Football_in_Bloomington%2C_Indiana%2C_1996.jpg/1200px-Football_in_Bloomington%2C_Indiana%2C_1996.jpg',
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.thumb_up_alt,
                    color: Colors.black,
                  ),
                  title: Text(
                    'data',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'fsyffredfberkfesgy fdhsrefgubeufuhfbjsdfdsfrefbsebferfukefbeabfeafyadhs',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  // Icon(
                  //   Icons.thumb_down_alt,
                  //   color: Colors.black,
                  // ),
                  // Icon(
                  //   Icons.comment_rounded,
                  //   color: Colors.black,
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
