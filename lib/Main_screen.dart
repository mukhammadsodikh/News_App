import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("News App"),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                // Handle search icon tap here
              },
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.language)),
              Tab(icon: Icon(Icons.handshake_outlined)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(
                    itemList[index].img,
                    fit: BoxFit.cover,
                    width: 130,
                    height: 110,
                  ),
                  title: const Text(
                    'Channel name:',
                    style: TextStyle(color: Colors.white38),
                  ),
                  subtitle: Text(
                    itemList[index].description,
                    style: const TextStyle(fontSize: 14, color: Colors.white60),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.grey,
                );
              },
              itemCount: 10,
            ),
            // Second Tab content
            Container(
              color: Colors.black12,
              child: const Center(
                child: Text('Business', style: TextStyle(color: Colors.white)),
              ),
            ),
            // Third Tab content
            Container(
              color: Colors.black12,
              child: const Center(
                child: Text('Traveling', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.view_headline,
                color: Colors.white10,
              ),
              label: 'Headlines',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Colors.white10),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi, color: Colors.white10),
              label: 'Social',
            ),
          ],
        ),
      ),
    );
  }
}
