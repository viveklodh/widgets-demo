import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {

  final List<Task> tasksList = [
    Task("1", "hello"),
    Task("2", "dart"),
    Task("3", "flutter"),
    Task("4", "java"),
    Task("5", "c++")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list view page'),
        backgroundColor: Colors.green,
      ),
      // List builder
      body: ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text(tasksList[index].taskName),
              title: Text(tasksList[index].description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(task: tasksList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// detail screen
class DetailScreen extends StatelessWidget {
  final Task task;
  DetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("detail page"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(task.taskName),
            const SizedBox(
              width: 20,
            ),
            Text(task.description),
          ],
        )),
      ),
    );
  }
}

// model class
class Task {
  final String taskName;
  final String description;

  Task(this.taskName, this.description);
}
