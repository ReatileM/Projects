import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    super.key,
  });

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Tarangire-Natpark800600.jpg/800px-Tarangire-Natpark800600.jpg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const Text("Student Name"),
                  const Text("example@gmail.com"),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.grade,
              ),
              title: Text("Student Name"),
              subtitle: Text("221004267"),
            )
          ],
        ),
      ),
    );
  }
}
