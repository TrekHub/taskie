import 'package:flutter/material.dart';
import 'package:taskie/screens/notifications/notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[200],
          title: const Text('Taskie'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationsScreen()));
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello, world!'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedIconTheme: const IconThemeData(color: Colors.black26),
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black26,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.analytics_outlined,
              ),
              label: 'Analysis',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
