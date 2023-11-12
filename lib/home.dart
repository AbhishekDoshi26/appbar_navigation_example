import 'package:appbar_navigation_example/navigation_data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final scrollController = ScrollController();

  void scrollToSection(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              scrollToSection(navigatorKeys[0].currentContext!);
            },
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollToSection(navigatorKeys[1].currentContext!);
            },
            child: const Text(
              'About',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollToSection(navigatorKeys[2].currentContext!);
            },
            child: const Text(
              'Location',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollToSection(navigatorKeys[3].currentContext!);
            },
            child: const Text(
              'Contact',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollToSection(navigatorKeys[4].currentContext!);
            },
            child: const Text(
              'Footer',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                key: navigatorKeys[0],
                color: Colors.red.shade200,
                height: MediaQuery.sizeOf(context).height / 3,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('Home Content')),
              ),
              Container(
                key: navigatorKeys[1],
                color: Colors.yellow.shade200,
                height: MediaQuery.sizeOf(context).height / 2,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('About Content')),
              ),
              Container(
                key: navigatorKeys[2],
                color: Colors.blue.shade200,
                height: MediaQuery.sizeOf(context).height / 4,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('Location')),
              ),
              Container(
                key: navigatorKeys[3],
                color: Colors.green.shade200,
                height: MediaQuery.sizeOf(context).height / 4,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('Contact')),
              ),
              Container(
                key: navigatorKeys[4],
                color: Colors.pink.shade200,
                height: MediaQuery.sizeOf(context).height / 5,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('Footer')),
              ),
              Container(
                color: Colors.brown.shade200,
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: const Center(child: Text('Extra Item')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
