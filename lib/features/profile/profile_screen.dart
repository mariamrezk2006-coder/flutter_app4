import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Example")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text("Builder Item ${index + 1}"),
                );
              },
            ),
          ),

          const Divider(thickness: 3, color: Colors.black),

          Expanded(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.star),
                  title: Text("Separated Item ${index + 1}"),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(color: Colors.grey, thickness: 1);
              },
            ),
          ),
        ],
      ),
    );
  }
}